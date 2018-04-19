% tb1 = rosbag('/home/malcolm/tb1_known_start.bag');
% tb2 = rosbag('/home/malcolm/tb2_known_start.bag');
% 
% tb1Scans = readMessages(select(tb1, 'Topic', '/tb1/scan'));
% tb2Scans = readMessages(select(tb2, 'Topic', '/tb2/scan'));
% % 
% mid = tb1.StartTime + (tb1.EndTime - tb1.StartTime)/2;
% tb1Maps_1 = readMessages(select(tb1, 'Time', [tb1.StartTime mid],'Topic', '/tb1/map'));
% tb1Maps_2 = readMessages(select(tb1, 'Time', [mid tb1.EndTime],  'Topic', '/tb1/map'));
% tb2Maps = readMessages(select(tb2, 'Topic', '/tb2/map'));
 
%% Load and Process Data
tb1 = rosbag('/home/malcolm/tb1_1cm.bag');
tb2 = rosbag('/home/malcolm/tb2_1cm.bag');
tmp = readMessages(select(tb1, 'Time', [tb1.EndTime-2 tb1.EndTime],  'Topic', '/tb1/map'));
last_map1 = show(readOccupancyGrid(tmp{1}));
last_map1 = last_map1.CData;
tmp = readMessages(select(tb2, 'Time', [tb2.EndTime-2 tb2.EndTime],  'Topic', '/tb2/map'));
last_map2 = show(readOccupancyGrid(tmp{1}));
last_map2 = last_map2.CData;

% Morpohologial expansion & Filtering May improve Performance 
% last_map1 = imgaussfilt(last_map1,1);
% last_map2 = imgaussfilt(last_map2,1);
% se = offsetstrel('ball',3,3);
% last_map1 = imdilate(imerode(last_map1, se),se);
% last_map2 = imdilate(imerode(last_map2, se),se);
%% Detect Features
tb1  = detectSURFFeatures(last_map1);
tb2  = detectSURFFeatures(last_map2);
% combine?
% tb1 = detectFASTFeatures(last_map1);
% tb2 = detectFASTFeatures(last_map2);

[tb1Features,  validPtsTB1] = extractFeatures(last_map1,  tb1);
[tb2Features,  validPtsTB2] = extractFeatures(last_map2,  tb2);
indexPairs = matchFeatures(tb1Features, tb2Features);
matchedTB1  = validPtsTB1(indexPairs(:,1));
matchedTB2  = validPtsTB2(indexPairs(:,2));

figure;
showMatchedFeatures(last_map1,last_map2,matchedTB1,matchedTB2);
title('All Matching points');

%% Transform & Find Inliers
[tform, inlierTB2, inlierTB1] = estimateGeometricTransform(...
    matchedTB2, matchedTB1, 'similarity');

figure;
showMatchedFeatures(last_map1,last_map2,inlierTB1,inlierTB2);
title('Matching points (inliers only)');
legend('tb1_map','tb2_map');
%% Output Transform
% Tinv  = tform.invert.T;
% ss = Tinv(2,1);
% sc = Tinv(1,1);
% scaleRecovered = sqrt(ss*ss + sc*sc);
% thetaRecovered = atan2(ss,sc)*180/pi;
%%
outputView = imref2d(size(last_map1));
recovered  = imwarp(last_map2,tform,'OutputView',outputView);

figure, imshowpair(last_map1,recovered,'montage')
figure, imshow(imfuse(last_map1, recovered));
