<aside class="main-sidebar">
    <section class="sidebar">
        <!-- Sidebar user panel -->
        @if (! Auth::guest())
            <div class="user-panel">
                <div class="pull-left info no-absolute">
                    <p>{{ Auth::user()->name }}</p>
                </div>
            </div>
        @endif
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header"><b>{{'MAIN MENU'}}</b></li>
            <li class="treeview">
                <a href="{{ url('home') }}">
                    <i class="fa fa-dashboard"></i> Dashboard <i class="fa fa-angle-left pull-right"></i>
                </a>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('main') }}"> Main Dashboard </a> </li>
                    </ul>                            
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('home1') }}"> Fakta Sarana Kesehatan </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('home2') }}"> Fakta Tenaga Kesehatan </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('home3') }}"> Fakta Kesehatan Keluarga </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('home4') }}"> Fakta Pengendalian Penyakit </a> </li>
                    </ul>


            <li class="treeview">
                <a href="{{ url('master') }}">
                    <i class='fa fa-database'></i>{{'Master Data'}} <i class="fa fa-angle-left pull-right"></i>
                </a>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('master') }}"> Master Data </a> </li>
                    </ul>                            
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('master?category=sarana-kesehatan') }}"> Fakta Sarana Kesehatan </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('master?category=tenaga-kesehatan') }}"> Fakta Tenaga Kesehatan </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('master?category=kesehatan-keluarga') }}"> Fakta Kesehatan Keluarga </a> </li>
                    </ul>
                    <ul class="treeview-menu">
                        <li class="treeview"> <a href="{{ url('master?category=pengendalian-penyakit') }}"> Fakta Pengendalian Penyakit </a> </li>
                    </ul>


                    <li><a href="{{ url('tentang') }}"><i class='fa fa-book'></i> <span>{{'Tentang'}}</span></a></li>
        </ul>
    </section>
</aside>
