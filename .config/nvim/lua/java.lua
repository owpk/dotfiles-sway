local home = os.getenv("HOME")

local config = {
    cmd = { 
--	    home .. "/.local/share/nvim/lsp_servers/jdtls/bin/jdtls"
     'java',
     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
     '-Dosgi.bundles.defaultStartLevel=4',
     '-Declipse.product=org.eclipse.jdt.ls.core.product',
     '-Dlog.protocol=true',
     '-Dlog.level=ALL',
     '-Xms1g',
     '--add-modules=ALL-SYSTEM',
     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
     '-jar', vim.fn.glob(home .. "/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
     '-configuration', home .. "/.local/share/nvim/lsp_servers/jdtls/config_linux",
     '-data', home .. "/projects/dev/java"
    },
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
