[33mcommit a40cab2ea5c73e4c02a897e456320fe67d3b0303[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: RyamSousa <ryam.sousa123@gmail.com>
Date:   Wed May 18 21:30:00 2022 -0300

    :hammer: refact indent and added config in '.editorconfig'

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mindex 59d9a3a..2f92562 100644[m
[1m--- a/.editorconfig[m
[1m+++ b/.editorconfig[m
[36m@@ -3,13 +3,13 @@[m [mroot = true[m
 [m
 [*][m
 charset = utf-8[m
[31m-indent_style = space[m
[31m-indent_size = 2[m
[32m+[m[32mindent_style = tab[m
[32m+[m[32mindent_size = 4[m
 insert_final_newline = true[m
 trim_trailing_whitespace = true[m
 [m
 [*.ts][m
[31m-quote_type = single[m
[32m+[m[32mquote_type = double[m
 [m
 [*.md][m
 max_line_length = off[m
[1mdiff --git a/src/app/app.component.html b/src/app/app.component.html[m
[1mindex 698fdbb..9880cfe 100644[m
[1m--- a/src/app/app.component.html[m
[1m+++ b/src/app/app.component.html[m
[36m@@ -8,469 +8,764 @@[m
 <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->[m
 [m
 <style>[m
[31m-  :host {[m
[31m-    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";[m
[31m-    font-size: 14px;[m
[31m-    color: #333;[m
[31m-    box-sizing: border-box;[m
[31m-    -webkit-font-smoothing: antialiased;[m
[31m-    -moz-osx-font-smoothing: grayscale;[m
[31m-  }[m
[31m-[m
[31m-  h1,[m
[31m-  h2,[m
[31m-  h3,[m
[31m-  h4,[m
[31m-  h5,[m
[31m-  h6 {[m
[31m-    margin: 8px 0;[m
[31m-  }[m
[31m-[m
[31m-  p {[m
[31m-    margin: 0;[m
[31m-  }[m
[31m-[m
[31m-  .spacer {[m
[31m-    flex: 1;[m
[31m-  }[m
[31m-[m
[31m-  .toolbar {[m
[31m-    position: absolute;[m
[31m-    top: 0;[m
[31m-    left: 0;[m
[31m-    right: 0;[m
[31m-    height: 60px;[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-    background-color: #1976d2;[m
[31m-    color: white;[m
[31m-    font-weight: 600;[m
[31m-  }[m
[31m-[m
[31m-  .toolbar img {[m
[31m-    margin: 0 16px;[m
[31m-  }[m
[31m-[m
[31m-  .toolbar #twitter-logo {[m
[31m-    height: 40px;[m
[31m-    margin: 0 8px;[m
[31m-  }[m
[31m-[m
[31m-  .toolbar #youtube-logo {[m
[31m-    height: 40px;[m
[31m-    margin: 0 16px;[m
[31m-  }[m
[31m-[m
[31m-  .toolbar #twitter-logo:hover,[m
[31m-  .toolbar #youtube-logo:hover {[m
[31m-    opacity: 0.8;[m
[31m-  }[m
[31m-[m
[31m-  .content {[m
[31m-    display: flex;[m
[31m-    margin: 82px auto 32px;[m
[31m-    padding: 0 16px;[m
[31m-    max-width: 960px;[m
[31m-    flex-direction: column;[m
[31m-    align-items: center;[m
[31m-  }[m
[31m-[m
[31m-  svg.material-icons {[m
[31m-    height: 24px;[m
[31m-    width: auto;[m
[31m-  }[m
[31m-[m
[31m-  svg.material-icons:not(:last-child) {[m
[31m-    margin-right: 8px;[m
[31m-  }[m
[31m-[m
[31m-  .card svg.material-icons path {[m
[31m-    fill: #888;[m
[31m-  }[m
[31m-[m
[31m-  .card-container {[m
[31m-    display: flex;[m
[31m-    flex-wrap: wrap;[m
[31m-    justify-content: center;[m
[31m-    margin-top: 16px;[m
[31m-  }[m
[31m-[m
[31m-  .card {[m
[31m-    all: unset;[m
[31m-    border-radius: 4px;[m
[31m-    border: 1px solid #eee;[m
[31m-    background-color: #fafafa;[m
[31m-    height: 40px;[m
[31m-    width: 200px;[m
[31m-    margin: 0 8px 16px;[m
[31m-    padding: 16px;[m
[31m-    display: flex;[m
[31m-    flex-direction: row;[m
[31m-    justify-content: center;[m
[31m-    align-items: center;[m
[31m-    transition: all 0.2s ease-in-out;[m
[31m-    line-height: 24px;[m
[31m-  }[m
[31m-[m
[31m-  .card-container .card:not(:last-child) {[m
[31m-    margin-right: 0;[m
[31m-  }[m
[31m-[m
[31m-  .card.card-small {[m
[31m-    height: 16px;[m
[31m-    width: 168px;[m
[31m-  }[m
[31m-[m
[31m-  .card-container .card:not(.highlight-card) {[m
[31m-    cursor: pointer;[m
[31m-  }[m
[31m-[m
[31m-  .card-container .card:not(.highlight-card):hover {[m
[31m-    transform: translateY(-3px);[m
[31m-    box-shadow: 0 4px 17px rgba(0, 0, 0, 0.35);[m
[31m-  }[m
[31m-[m
[31m-  .card-container .card:not(.highlight-card):hover .material-icons path {[m
[31m-    fill: rgb(105, 103, 103);[m
[31m-  }[m
[31m-[m
[31m-  .card.highlight-card {[m
[31m-    background-color: #1976d2;[m
[31m-    color: white;[m
[31m-    font-weight: 600;[m
[31m-    border: none;[m
[31m-    width: auto;[m
[31m-    min-width: 30%;[m
[31m-    position: relative;[m
[31m-  }[m
[31m-[m
[31m-  .card.card.highlight-card span {[m
[31m-    margin-left: 60px;[m
[31m-  }[m
[31m-[m
[31m-  svg#rocket {[m
[31m-    width: 80px;[m
[31m-    position: absolute;[m
[31m-    left: -10px;[m
[31m-    top: -24px;[m
[31m-  }[m
[31m-[m
[31m-  svg#rocket-smoke {[m
[31m-    height: calc(100vh - 95px);[m
[31m-    position: absolute;[m
[31m-    top: 10px;[m
[31m-    right: 180px;[m
[31m-    z-index: -10;[m
[31m-  }[m
[31m-[m
[31m-  a,[m
[31m-  a:visited,[m
[31m-  a:hover {[m
[31m-    color: #1976d2;[m
[31m-    text-decoration: none;[m
[31m-  }[m
[31m-[m
[31m-  a:hover {[m
[31m-    color: #125699;[m
[31m-  }[m
[31m-[m
[31m-  .terminal {[m
[31m-    position: relative;[m
[31m-    width: 80%;[m
[31m-    max-width: 600px;[m
[31m-    border-radius: 6px;[m
[31m-    padding-top: 45px;[m
[31m-    margin-top: 8px;[m
[31m-    overflow: hidden;[m
[31m-    background-color: rgb(15, 15, 16);[m
[31m-  }[m
[31m-[m
[31m-  .terminal::before {[m
[31m-    content: "\2022 \2022 \2022";[m
[31m-    position: absolute;[m
[31m-    top: 0;[m
[31m-    left: 0;[m
[31m-    height: 4px;[m
[31m-    background: rgb(58, 58, 58);[m
[31m-    color: #c2c3c4;[m
[31m-    width: 100%;[m
[31m-    font-size: 2rem;[m
[31m-    line-height: 0;[m
[31m-    padding: 14px 0;[m
[31m-    text-indent: 4px;[m
[31m-  }[m
[31m-[m
[31m-  .terminal pre {[m
[31m-    font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;[m
[31m-    color: white;[m
[31m-    padding: 0 1rem 1rem;[m
[31m-    margin: 0;[m
[31m-  }[m
[31m-[m
[31m-  .circle-link {[m
[31m-    height: 40px;[m
[31m-    width: 40px;[m
[31m-    border-radius: 40px;[m
[31m-    margin: 8px;[m
[31m-    background-color: white;[m
[31m-    border: 1px solid #eeeeee;[m
[31m-    display: flex;[m
[31m-    justify-content: center;[m
[31m-    align-items: center;[m
[31m-    cursor: pointer;[m
[31m-    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);[m
[31m-    transition: 1s ease-out;[m
[31m-  }[m
[31m-[m
[31m-  .circle-link:hover {[m
[31m-    transform: translateY(-0.25rem);[m
[31m-    box-shadow: 0px 3px 15px rgba(0, 0, 0, 0.2);[m
[31m-  }[m
[31m-[m
[31m-  footer {[m
[31m-    margin-top: 8px;[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-    line-height: 20px;[m
[31m-  }[m
[31m-[m
[31m-  footer a {[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-  }[m
[31m-[m
[31m-  .github-star-badge {[m
[31m-    color: #24292e;[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-    font-size: 12px;[m
[31m-    padding: 3px 10px;[m
[31m-    border: 1px solid rgba(27,31,35,.2);[m
[31m-    border-radius: 3px;[m
[31m-    background-image: linear-gradient(-180deg,#fafbfc,#eff3f6 90%);[m
[31m-    margin-left: 4px;[m
[31m-    font-weight: 600;[m
[31m-  }[m
[31m-[m
[31m-  .github-star-badge:hover {[m
[31m-    background-image: linear-gradient(-180deg,#f0f3f6,#e6ebf1 90%);[m
[31m-    border-color: rgba(27,31,35,.35);[m
[31m-    background-position: -.5em;[m
[31m-  }[m
[31m-[m
[31m-  .github-star-badge .material-icons {[m
[31m-    height: 16px;[m
[31m-    width: 16px;[m
[31m-    margin-right: 4px;[m
[31m-  }[m
[31m-[m
[31m-  svg#clouds {[m
[31m-    position: fixed;[m
[31m-    bottom: -160px;[m
[31m-    left: -230px;[m
[31m-    z-index: -10;[m
[31m-    width: 1920px;[m
[31m-  }[m
[31m-[m
[31m-  /* Responsive Styles */[m
[31m-  @media screen and (max-width: 767px) {[m
[31m-    .card-container > *:not(.circle-link) ,[m
[31m-    .terminal {[m
[31m-      width: 100%;[m
[31m-    }[m
[31m-[m
[31m-    .card:not(.highlight-card) {[m
[31m-      height: 16px;[m
[31m-      margin: 8px 0;[m
[31m-    }[m
[31m-[m
[31m-    .card.highlight-card span {[m
[31m-      margin-left: 72px;[m
[31m-    }[m
[31m-[m
[31m-    svg#rocket-smoke {[m
[31m-      right: 120px;[m
[31m-      transform: rotate(-5deg);[m
[31m-    }[m
[31m-  }[m
[31m-[m
[31m-  @media screen and (max-width: 575px) {[m
[31m-    svg#rocket-smoke {[m
[31m-      display: none;[m
[31m-      visibility: hidden;[m
[31m-    }[m
[31m-  }[m
[32m+[m	[32m:host {[m
[32m+[m		[32mfont-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial,[m
[32m+[m			[32msans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";[m
[32m+[m		[32mfont-size: 14px;[m
[32m+[m		[32mcolor: #333;[m
[32m+[m		[32mbox-sizing: border-box;[m
[32m+[m		[32m-webkit-font-smoothing: antialiased;[m
[32m+[m		[32m-moz-osx-font-smoothing: grayscale;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mh1,[m
[32m+[m	[32mh2,[m
[32m+[m	[32mh3,[m
[32m+[m	[32mh4,[m
[32m+[m	[32mh5,[m
[32m+[m	[32mh6 {[m
[32m+[m		[32mmargin: 8px 0;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mp {[m
[32m+[m		[32mmargin: 0;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.spacer {[m
[32m+[m		[32mflex: 1;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.toolbar {[m
[32m+[m		[32mposition: absolute;[m
[32m+[m		[32mtop: 0;[m
[32m+[m		[32mleft: 0;[m
[32m+[m		[32mright: 0;[m
[32m+[m		[32mheight: 60px;[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32malign-items: center;[m
[32m+[m		[32mbackground-color: #1976d2;[m
[32m+[m		[32mcolor: white;[m
[32m+[m		[32mfont-weight: 600;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.toolbar img {[m
[32m+[m		[32mmargin: 0 16px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.toolbar #twitter-logo {[m
[32m+[m		[32mheight: 40px;[m
[32m+[m		[32mmargin: 0 8px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.toolbar #youtube-logo {[m
[32m+[m		[32mheight: 40px;[m
[32m+[m		[32mmargin: 0 16px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.toolbar #twitter-logo:hover,[m
[32m+[m	[32m.toolbar #youtube-logo:hover {[m
[32m+[m		[32mopacity: 0.8;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.content {[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32mmargin: 82px auto 32px;[m
[32m+[m		[32mpadding: 0 16px;[m
[32m+[m		[32mmax-width: 960px;[m
[32m+[m		[32mflex-direction: column;[m
[32m+[m		[32malign-items: center;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32msvg.material-icons {[m
[32m+[m		[32mheight: 24px;[m
[32m+[m		[32mwidth: auto;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32msvg.material-icons:not(:last-child) {[m
[32m+[m		[32mmargin-right: 8px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card svg.material-icons path {[m
[32m+[m		[32mfill: #888;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card-container {[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32mflex-wrap: wrap;[m
[32m+[m		[32mjustify-content: center;[m
[32m+[m		[32mmargin-top: 16px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card {[m
[32m+[m		[32mall: unset;[m
[32m+[m		[32mborder-radius: 4px;[m
[32m+[m		[32mborder: 1px solid #eee;[m
[32m+[m		[32mbackground-color: #fafafa;[m
[32m+[m		[32mheight: 40px;[m
[32m+[m		[32mwidth: 200px;[m
[32m+[m		[32mmargin: 0 8px 16px;[m
[32m+[m		[32mpadding: 16px;[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32mflex-direction: row;[m
[32m+[m		[32mjustify-content: center;[m
[32m+[m		[32malign-items: center;[m
[32m+[m		[32mtransition: all 0.2s ease-in-out;[m
[32m+[m		[32mline-height: 24px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card-container .card:not(:last-child) {[m
[32m+[m		[32mmargin-right: 0;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card.card-small {[m
[32m+[m		[32mheight: 16px;[m
[32m+[m		[32mwidth: 168px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card-container .card:not(.highlight-card) {[m
[32m+[m		[32mcursor: pointer;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card-container .card:not(.highlight-card):hover {[m
[32m+[m		[32mtransform: translateY(-3px);[m
[32m+[m		[32mbox-shadow: 0 4px 17px rgba(0, 0, 0, 0.35);[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card-container .card:not(.highlight-card):hover .material-icons path {[m
[32m+[m		[32mfill: rgb(105, 103, 103);[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card.highlight-card {[m
[32m+[m		[32mbackground-color: #1976d2;[m
[32m+[m		[32mcolor: white;[m
[32m+[m		[32mfont-weight: 600;[m
[32m+[m		[32mborder: none;[m
[32m+[m		[32mwidth: auto;[m
[32m+[m		[32mmin-width: 30%;[m
[32m+[m		[32mposition: relative;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.card.card.highlight-card span {[m
[32m+[m		[32mmargin-left: 60px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32msvg#rocket {[m
[32m+[m		[32mwidth: 80px;[m
[32m+[m		[32mposition: absolute;[m
[32m+[m		[32mleft: -10px;[m
[32m+[m		[32mtop: -24px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32msvg#rocket-smoke {[m
[32m+[m		[32mheight: calc(100vh - 95px);[m
[32m+[m		[32mposition: absolute;[m
[32m+[m		[32mtop: 10px;[m
[32m+[m		[32mright: 180px;[m
[32m+[m		[32mz-index: -10;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32ma,[m
[32m+[m	[32ma:visited,[m
[32m+[m	[32ma:hover {[m
[32m+[m		[32mcolor: #1976d2;[m
[32m+[m		[32mtext-decoration: none;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32ma:hover {[m
[32m+[m		[32mcolor: #125699;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.terminal {[m
[32m+[m		[32mposition: relative;[m
[32m+[m		[32mwidth: 80%;[m
[32m+[m		[32mmax-width: 600px;[m
[32m+[m		[32mborder-radius: 6px;[m
[32m+[m		[32mpadding-top: 45px;[m
[32m+[m		[32mmargin-top: 8px;[m
[32m+[m		[32moverflow: hidden;[m
[32m+[m		[32mbackground-color: rgb(15, 15, 16);[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.terminal::before {[m
[32m+[m		[32mcontent: "\2022 \2022 \2022";[m
[32m+[m		[32mposition: absolute;[m
[32m+[m		[32mtop: 0;[m
[32m+[m		[32mleft: 0;[m
[32m+[m		[32mheight: 4px;[m
[32m+[m		[32mbackground: rgb(58, 58, 58);[m
[32m+[m		[32mcolor: #c2c3c4;[m
[32m+[m		[32mwidth: 100%;[m
[32m+[m		[32mfont-size: 2rem;[m
[32m+[m		[32mline-height: 0;[m
[32m+[m		[32mpadding: 14px 0;[m
[32m+[m		[32mtext-indent: 4px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.terminal pre {[m
[32m+[m		[32mfont-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace;[m
[32m+[m		[32mcolor: white;[m
[32m+[m		[32mpadding: 0 1rem 1rem;[m
[32m+[m		[32mmargin: 0;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.circle-link {[m
[32m+[m		[32mheight: 40px;[m
[32m+[m		[32mwidth: 40px;[m
[32m+[m		[32mborder-radius: 40px;[m
[32m+[m		[32mmargin: 8px;[m
[32m+[m		[32mbackground-color: white;[m
[32m+[m		[32mborder: 1px solid #eeeeee;[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32mjustify-content: center;[m
[32m+[m		[32malign-items: center;[m
[32m+[m		[32mcursor: pointer;[m
[32m+[m		[32mbox-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);[m
[32m+[m		[32mtransition: 1s ease-out;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32m.circle-link:hover {[m
[32m+[m		[32mtransform: translateY(-0.25rem);[m
[32m+[m		[32mbox-shadow: 0px 3px 15px rgba(0, 0, 0, 0.2);[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mfooter {[m
[32m+[m		[32mmargin-top: 8px;[m
[32m+[m		[32mdisplay: flex;[m
[32m+[m		[32malign-items: center;[m
[32m+[m		[32mline-height: 20px;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mfooter a {[m
[32m+[m		[32mdisplay: