guard 'shell' do
  watch(%r{^app/code/src/app/views/.*\.sve$}) do
    recompile_app
  end

  watch(%r{^app/code/src/app/(controllers|helpers|models)/.*\.ad[bs]$}) do
    recompile_app
  end

  watch(%r{^app/config/.*\.ad[bs]$}) do
    recompile_app
  end

  watch(%r{^app/code/.*\.gpr$}) do
    recompile_app
  end

  watch(%r{^app/code/bin/server_command$}) do
    restart_service
  end
end

def recompile_app
  `vagrant ssh dev -c 'export PATH="/usr/local/gnat/bin:$PATH"; export LIBRARY_PATH=/usr/lib/i386-linux-gnu; export C_INCLUDE_PATH=/usr/include/i386-linux-gnu; cd /opt/fullcompta; make'`
end

def restart_service
  `vagrant ssh dev -c 'sudo service fullcompta restart'`
end
