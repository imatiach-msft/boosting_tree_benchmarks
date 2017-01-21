xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_yahoo_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/dataexpo_onehot.train" objective="binary:logistic" 2>&1 | tee xgboost_dataexpo_onehot_speed.log


xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_approx_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_yahoo_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/dataexpo_onehot.train" objective="binary:logistic" 2>&1 | tee xgboost_approx_dataexpo_onehot_speed.log

xgboost/xgboost xgboost.conf max_bin=255 tree_method=hist grow_policy=lossguide max_depth=0 max_leaves=255 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_hist_higgs_speed.log
xgboost/xgboost xgboost.conf max_bin=255 tree_method=hist grow_policy=lossguide max_depth=0 max_leaves=255 data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_hist_msltr_speed.log
xgboost/xgboost xgboost.conf max_bin=255 tree_method=hist grow_policy=lossguide max_depth=0 max_leaves=255 data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_hist_yahoo_speed.log
xgboost/xgboost xgboost.conf max_bin=255 tree_method=hist grow_policy=lossguide max_depth=0 max_leaves=255 data="../data/dataexpo_onehot.train" objective="binary:logistic"  2>&1 | tee xgboost_hist_dataexpo_onehot_speed.log






