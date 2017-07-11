<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        @if (! Auth::guest())
            <div class="user-panel">
                <div class="pull-left info no-absolute">
                    <p>{{ Auth::user()->name }}</p>
                    <!-- Status -->
                    <a><i class="fa fa-circle text-success"></i> {{'Online'}}</a>
                </div>
            </div>
        @endif

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header"><b>{{'MAIN MENU'}}</b></li>
            <!-- Optionally, you can add icons to the links -->
            <li><a href="{{ url('home') }}"><i class='fa fa-dashboard'></i> <span>{{'Dashboard'}}</span></a></li>
            <li><a href="{{ url('master') }}"><i class='fa fa-table'></i> <span>{{'Master Data'}}</span></a></li>
            <li><a href="{{ url('tentang') }}"><i class='fa fa-book'></i> <span>{{'Tentang'}}</span></a></li>
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
