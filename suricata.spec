Summary: Intrusion Detection System
Name: suricata
Version: 1.0.0_0
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
/usr/lib/python2.7/site-packages/suricata*
/etc/suricata/*
/usr/bin/suricatactl
/usr/bin/suricatasc
/usr/sbin/suricata
/var/*

