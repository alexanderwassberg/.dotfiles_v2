local status, glance = pcall(require, "glance")
if (not status) then return end

glance.setup {
    border = {
        enable = true
    }
}
