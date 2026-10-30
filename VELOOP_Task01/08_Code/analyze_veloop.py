"""VELOOP simulated-data profiling. CLI: python analyze_veloop.py --behavior FILE.xlsx --rewards FILE.xlsx --out output"""
from pathlib import Path
import argparse,pandas as pd
def analyze(behavior_path,rewards_path,out_dir='output'):
 b,r=Path(behavior_path),Path(rewards_path)
 if not b.exists(): raise FileNotFoundError(b)
 if not r.exists(): raise FileNotFoundError(r)
 out=Path(out_dir);out.mkdir(parents=True,exist_ok=True)
 x=pd.ExcelFile(b); prof=[]
 for s in x.sheet_names:
  d=pd.read_excel(b,sheet_name=s);prof.append({'dataset':s,'rows':len(d),'columns':len(d.columns),'duplicate_rows':int(d.duplicated().sum()),'missing_cells':int(d.isna().sum().sum()),'columns_with_missing':int((d.isna().sum()>0).sum())})
 pd.DataFrame(prof).to_csv(out/'dataset_profile.csv',index=False)
 u=pd.read_excel(b,sheet_name='01_Users_1000');ss=pd.read_excel(b,sheet_name='02_Sessions');e=pd.read_excel(b,sheet_name='03_Feature_Events');t=pd.read_excel(b,sheet_name='05_Task_Activity');st=t.task_status.astype('string').str.strip().str.lower();rate=round(st.eq('completed').mean()*100,2) if len(t) else 0
 pd.DataFrame([{'metric':'user_profiles','value':len(u)},{'metric':'sessions','value':len(ss)},{'metric':'feature_events','value':len(e)},{'metric':'task_activity_records','value':len(t)},{'metric':'task_completion_rate_pct','value':rate}]).to_csv(out/'key_findings.csv',index=False)
 m=pd.read_excel(r,sheet_name='Users_Messy_Audit');pd.DataFrame([{'check':'duplicate user_id rows in messy audit','count':int(m.user_id.duplicated(keep=False).sum())},{'check':'missing cells in messy audit','count':int(m.isna().sum().sum())}]).to_csv(out/'messy_audit_checks.csv',index=False)
 print('Done — simulated data only, not production VELOOP metrics.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--behavior',required=True);p.add_argument('--rewards',required=True);p.add_argument('--out',default='output');a=p.parse_args();analyze(a.behavior,a.rewards,a.out)
if __name__=='__main__':main()
