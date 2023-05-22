<template>
    <el-card class="box-card">
      <template #header>
        <div class="card-header">
          <span>关于作者</span>
        </div>
      </template>
      <div class="text item">作者：Sancean</div>
      <div class="text item">个人博客：<a target="_blank" href="https://blog.sancean.com/">Sancean's blog</a></div>
      <div class="text item">GitHub：<a target="_blank" href="https://github.com/Sancean">Sancean's github</a></div>
      <div class="text item">本人擅长 IntelliJ Idea/Webstorm、Visual Studio Code、Navicat 等软件的安装与卸载精通 CSS、JavaScript、PHP、ASP、C、C++、C#、Java、Go、Rust、Ruby、Perl、Lisp、Python、Objective-C、ActionScript、Pascal 等单词的拼写熟悉 Windows、Linux、Mac OS、Android、iOS、Harmony OS 等系统的开关机。</div>
    </el-card>
  </template>
  
  <style>
  .card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  
  .text {
    font-size: 14px;
  }
  
  .item {
    margin-bottom: 18px;
  }
  
  .box-card {
    width: 480px;
  }
  </style>
  