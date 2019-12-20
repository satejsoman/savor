<h1 align="center">s&nbsp;&nbsp;a&nbsp;&nbsp;v&nbsp;&nbsp;o&nbsp;&nbsp;r</h1>
<h6 align="center">it's a matter of taste</h6>

provides 3 functions with sensible defaults for saving R tables, regressions, and plots to LaTeX files:
- `savor::save.tbl` is a wrapper over `kable` and `kableExtra`
- `savor::save.reg` is a non-verbose wrapper over `stargazer` (prefer `stargazer-booktabs`)
- `savor::save.fig` registers a `tikz` sink as a device and prints plots. doesn't work with pipes (`%>%`) yet.
