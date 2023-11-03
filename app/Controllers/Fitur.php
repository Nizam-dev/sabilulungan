<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Cms;
use App\Models\Laporan;
use App\Models\Proposal;
use App\Models\ProposalPhoto;
use App\Models\ProposalApproval;
use App\Models\ProposalChecklist;
use App\Models\Skpd;

class Fitur extends BaseController
{
    public function peraturan()
    {
        $cms = new Cms();
        $data = $cms->where('page_id','peraturan')->get()->getResult();
        return view('pages/peraturan',['data'=>$data]);
    }

    public function lapor()
    {
        return view('pages/lapor');
    }

    public function lapor_send()
    {
       session()->setFlashdata('success',"Laporan Berhasil dikirim");
        return redirect()->back();
    }

    public function pengumuman()
    {
        return view('pages/pengumuman');
    }
    public function tentang()
    {
        $cms = new Cms();
        $data = $cms->where('page_id','tentang')->get()->getResult();
        return view('pages/tentang',['data'=>$data]);
    }


    public function proposal()
    {
        $skpd = new Skpd();
        $proposal = new Proposal();
        $proposal_image = new ProposalPhoto();
        $proposal_ceklis = new ProposalChecklist();
        $proposal_aprov = new ProposalApproval();
        $dataproposal = $proposal->select("proposal.id,  proposal.name AS oleh,  proposal.user,  proposal.judul,  proposal.latar_belakang,  proposal.current_stat,  proposal.created_at, b.name, b.role_id, c.name AS skpd, SUM(d.amount) AS mohon, e.name AS tahap")
        ->join('user as b','b.id= proposal.user_id','left')
        ->join('skpd as c','c.id= proposal.skpd_id','left')
        ->join('proposal_dana as d','d.proposal_id= proposal.id','left')
        ->join('flow as e','e.id= proposal.current_stat','left')
        ->groupBy('proposal.id')
        ->get()->getResult();

        foreach($dataproposal as $p){
            $p->image = $proposal_image->select('path')->where('proposal_id',$p->id)->orderBy('sequence','ASC')->get()->getResult();
            $p->proses = $proposal_aprov->select('action')->where('proposal_id',$p->id)->orderBy('flow_id','ASC')->get()->getResult();
            $p->nilai = $proposal_ceklis->select('value')->where('proposal_id',$p->id)->where('checklist_id','28')->get()->getResult();
            $p->konten = substr(strip_tags($p->latar_belakang), 0, 150); 
            $p->length  = strlen($p->konten);
        }

        $data = [
            'kategori'=> $skpd->get()->getResult(),
            'tahun'=>$proposal->select(" DATE_FORMAT(created_at, '%Y') as tahun ")->groupBy('tahun')->orderBy('tahun','ASC')->get()->getResult(),
            'proposal'=>$dataproposal
        ];

        return view('pages/proposal',$data);
    }


    public function listlaporan()
    {
        $cms = new Laporan();
        $data = $cms->orderby('laporan_id','DESC')->get()->getResult();
        return view('pages/listlaporan',['data'=>$data]);
    }
}
