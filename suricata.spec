Summary: Intrusion Detection System
Name: suricata
Version: 7.0.0
Release: 1%{?dist}
Epoch: 1
License: GPLv2
URL: https://suricata-ids.org/
Source0: https://www.openinfosecfoundation.org/download/%{name}-%{version}.tar.gz

%description
Suricata

%prep


%build


%install
cp -r %{_builddir}/* %{buildroot}/

%files
%license /LICENSE
/usr/share/doc/suricata/*
/usr/share/suricata/*
/usr/lib64/libhtp.so.2*
/usr/lib/python2.7/site-packages/suricatasc/*
/usr/lib/python2.7/site-packages/suricata/*
/usr/lib/python2.7/site-packages/suricata-7.0.0_dev-py2.7.egg-info
/etc/suricata/*
/usr/bin/suricatactl
/usr/bin/suricatasc
/usr/sbin/suricata
/var/*

