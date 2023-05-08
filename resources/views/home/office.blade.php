<!DOCTYPE html>
<html>
<head>
    <title>Office</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/plugins/css/pluginsCss.css'/>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/plugins/plugins.css'/>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/css/luckysheet.css'/>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/assets/iconfont/iconfont.css'/>
    <link href="{{ asset('expendPlugins/chart/chartmix.css') }}" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");

        :root {
            --header-height: 3rem;
            --nav-width: 30px;
            --first-color: #4723D9;
            --first-color-light: #AFA5D9;
            --white-color: #F7F6FB;
            --body-font: 'Nunito', sans-serif;
            --normal-font-size: 1rem;
            --z-fixed: 100
        }

        *, ::before, ::after {
            box-sizing: border-box
        }

        /* body{
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s
        } */
        a {
            text-decoration: none
        }

        .header {
            width: 100%;
            height: var(--header-height);
            position: fixed;
            top: 0;
            left: right;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 1rem;
            background-color: var(--white-color);
            z-index: var(--z-fixed);
            transition: .5s
        }

        .header_toggle {
            color: var(--first-color);
            font-size: 1.5rem;
            cursor: pointer
        }

        .header_img {
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            border-radius: 50%;
            overflow: hidden
        }

        .header_img img {
            width: 40px
        }

        .r-navbar {
            position: fixed;
            top: 0;
            right: -30%;
            width: var(--nav-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }

        .show {
            right: 0
        }

        .body-pd {
            padding-left: calc(var(--nav-width) + 1rem)
        }

        .active {
            color: var(--white-color)
        }

        .active::before {
            content: '';
            position: absolute;
            right: 0;
            width: 2px;
            height: 32px;
            background-color: var(--white-color)
        }

        .height-100 {
            height: 100vh
        }

        @media screen and (min-width: 768px) {
            body {
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav-width) + 2rem)
            }

            .header {
                height: calc(var(--header-height) + 1rem);
                padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
            }

            .header_img {
                width: 40px;
                height: 40px
            }

            .header_img img {
                width: 45px
            }

            .r-navbar {
                right: 0;
                padding: 1rem 1rem 0 0
            }

            .show {
                width: calc(var(--nav-width) + 156px)
            }

            .body-pd {
                padding-left: calc(var(--nav-width) + 188px)
            }
        }
    </style>
</head>
<body id="body-pd">
<div id="lucky-mask-demo"
     style="position: absolute;z-index: 1000000;left: 0px;top: 0px;bottom: 0px;right: 0px; background: rgba(255, 255, 255, 0.8); text-align: center;font-size: 40px;align-items:center;justify-content: center;display: none;">
    Downloading
</div>
<div id="luckysheet" style="margin:0px;padding:0px;position:absolute;width:100%;left: 0px;top: 0px;bottom: 0px;outline: none;">
</div>
<div id="cata" style="float:right;width:21%;">
    <div id="header">
        <div class="header_toggle"></div>
        <nav id="nav-bar" class="r-navbar navbar-light bg-light align-items-stretch ">
            <i class='bx bx-menu' style="position: relative; top:0px; right:10%;" id="header-toggle"></i>
            {{--<div class="d-flex flex-column flex-shrink-0 text-white" style="width: 280px; text-color:fff;">--}}
            <a href="/" class="navbar-brand d-flex text-black text-decoration-none ms-3 my-1">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap"></use>
                </svg>
                <span class="fs-4">Kinerja <br> Pemasaran</span>
            </a>
            <select class="ms-3 my-1 form-control" id="item-select">
                <option value="">Select Item</option>
                @foreach ($droplist as $item)
                    <option value="{{ $item->id }}" <?php echo isset($_GET['id']) && $_GET['id'] == $item->id ? 'selected' : '' ?>>{{ $item->name }}
                    </option>
                @endforeach
                {{--<option value="1" <?php echo isset($_GET['id']) && $_GET['id'] == 1 ? 'selected' : '' ?>>Item 1-1
                </option>
                <option value="2" <?php echo isset($_GET['id']) && $_GET['id'] == 2 ? 'selected' : '' ?>>Item 1-2
                </option>--}}
                {{--<option value="2023" <?php echo isset($_GET['id']) && $_GET['id'] == 2023 ? 'selected' : '' ?>>RKAP 2023</option>
                <option value="2024" <?php echo isset($_GET['id']) && $_GET['id'] == 2024 ? 'selected' : '' ?>>RKAP 2024</option>
                <option value="2025" <?php echo isset($_GET['id']) && $_GET['id'] == 2025 ? 'selected' : '' ?>>RKAP 2025</option>
                <option value="2026" <?php echo isset($_GET['id']) && $_GET['id'] == 2026 ? 'selected' : '' ?>>RKAP 2026</option>
                <option value="2027" <?php echo isset($_GET['id']) && $_GET['id'] == 2027 ? 'selected' : '' ?>>RKAP 2027</option>--}}
            </select>
            <button class="btn btn-primary ms-3 my-1" id="save-now">Save</button>
            <button class="btn btn-primary ms-3 my-1" data-bs-toggle="modal" data-bs-target="#form-modal">
                {{ __('Save As') }}
            </button>
            <button class="btn btn-info ms-3 my-1" id="Luckyexcel-downlod-file">Download</button>
            {{--<button class="btn btn-success ms-3 my-1" id="loadFilesButton">Load Files</button>--}}
            <button class="btn btn-secondary ms-3 my-1" id="loadDataButton">Load Data</button>
            {{--</div>--}}
        </nav>
    </div>
</div>
{{-- modal Add Category Menu --}}
<div class="modal fade" id="form-modal"  role="dialog" aria-labelledby="modal-form-label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-form-label">{{ __('Save As') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>
            <div class="modal-body">
                <form id="form-input">
                    <input type="hidden" name="template_id" id="template-id">
                    <div class="form-group">
                        <label class="label">{{ __('Name') }}</label>
                        <input type="text" name="name" id="name" class="form-control" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" id="save-btn" class="btn btn-sm btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/plugins/js/plugin.js"></script>
<script src="https://cdn.jsdelivr.net/npm/luckysheet@latest/dist/luckysheet.umd.js"></script>
<script src="{{ asset('expendPlugins/chart/chartmix.umd.min.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
<script src="{{ asset('luckyexcel/luckyexcel.umd.js') }}"></script>

<script>
    $(document).ready(function () {
        const showNavbar = (toggleId, navId, bodyId, headerId) => {
            const toggle = document.getElementById(toggleId),
                nav = document.getElementById(navId),
                bodypd = document.getElementById(bodyId),
                headerpd = document.getElementById(headerId)

            // Validate that all variables exist
            if (toggle && nav && bodypd && headerpd) {
                $('#header-toggle').on('click', function () {
                    // show navbar
                    nav.classList.toggle('show')
                    // change icon
                    toggle.classList.toggle('bx-x')
                    // add padding to body
                    // bodypd.classList.toggle('body-pd')
                    // add padding to header
                    // headerpd.classList.toggle('body-pd')
                })
            }
        }

        showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')
    })
</script>
<script>
    function myFunction() {
        var excel = luckysheet.getAllSheets();
        //去除临时数据,减小体积
        for (var i in excel) excel[i].data = undefined
        $.post(
            "http://" + location.host + "/set?id=" + <?php echo $id ?>,
            {hash: JSON.stringify(excel)},
            function () {
                $(luckysheet_info_detail_save).text("已保存")
            })
    }
</script>
<script>
    $(function () {
        // var name = "";
        // while(name.length == 0){
        //     name = prompt("请输入昵称")
        // }

        var autoSave;
        //配置项
        var options = {
            lang: 'en',
            container: 'luckysheet',
            allowUpdate: true,
            loadUrl: "http://" + location.host + "/get?id=" + <?php echo $id ?>,
            hook: {
                updated: function (e) {
                    //监听更新,并在3s后自动保存
                    if (autoSave) clearTimeout(autoSave)
                    $(luckysheet_info_detail_save).text("已修改")
                    autoSave = setTimeout(function () {
                        var excel = luckysheet.getAllSheets();
                        //去除临时数据,减小体积
                        for (var i in excel) excel[i].data = undefined
                        $.post(
                            "http://" + location.host + "/set?id=<?php echo $id ?>",
                            {hash: JSON.stringify(excel)},
                            function () {
                                $(luckysheet_info_detail_save).text("已保存")
                            })
                    }, 3 * 1000)
                    return true;
                }
            },
            plugins: ['chart']
            // updateUrl: "ws://" + location.hostname
        }

        //console.log(JSON.stringify(options))
        luckysheet.create(options)
    })
</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var saveBtn = document.getElementById('save-now');
        var select = document.getElementById('item-select');
        var mask = document.getElementById("lucky-mask-demo");
        var selectADemo = document.getElementById('item-select');
        var downlodDemo = document.getElementById("Luckyexcel-downlod-file");
        saveBtn.addEventListener('click', function () {
            saveFunction();
        });
        select.addEventListener('change', function () {
            var value = this.value;
            if (value) {
                window.location.href = '?id=' + value;
            }
        });
        selectADemo.addEventListener("change", function (evt) {
            var obj = selectADemo;
            var index = obj.selectedIndex;
            var value = obj.options[index].value;
            var name = obj.options[index].innerHTML;
            if (value == "") {
                return;
            }
            mask.style.display = "flex";
            LuckyExcel.transformExcelToLuckyByUrl(value, name, function (exportJson, luckysheetfile) {

                if (exportJson.sheets == null || exportJson.sheets.length == 0) {
                    alert("Failed to read the content of the excel file, currently does not support xls files!");
                    return;
                }
                console.log(exportJson, luckysheetfile);
                mask.style.display = "none";
                window.luckysheet.destroy();

                window.luckysheet.create({
                    container: 'luckysheet', //luckysheet is the container id
                    showinfobar: false,
                    data: exportJson.sheets,
                    title: exportJson.info.name,
                    userInfo: exportJson.info.name.creator
                });
            });
        });
        downlodDemo.addEventListener("click", function(evt){
            /*var obj = selectADemo;
            var index = obj.selectedIndex;
            var value = obj.options[index].value;

            if(value.length==0){
                alert("Please select a demo file");
                return;
            }

            var elemIF = document.getElementById("Lucky-download-frame");
            if(elemIF==null){
                elemIF = document.createElement("iframe");
                elemIF.style.display = "none";
                elemIF.id = "Lucky-download-frame";
                document.body.appendChild(elemIF);
            }
            elemIF.src = "http://" + location.host + "/?id=" + value;

            console.log(elemIF.src)*/
            exportExcel(luckysheet.getAllSheets(), '下载')
        });
    });

    function saveFunction() {
        var excel = luckysheet.getAllSheets();
        //去除临时数据,减小体积
        for (var i in excel) excel[i].data = undefined
        $.post(
            "http://" + location.host + "/set?id=" + <?php echo $id ?>,
            {hash: JSON.stringify(excel)},
            function () {
                $(luckysheet_info_detail_save).text("已保存");
                window.alert("Save success");
            })
    }

    $('#save-btn').on('click', function () {
        var urlParams = new URLSearchParams(window.location.search);
        var templateId = urlParams.get('id');
        var name = $('#name').val();

        $.ajax({
            url: "{{ route('duplicate') }}",
            method: "POST",
            data: {
                id: templateId,
                name: name,
                _token: "{{ csrf_token() }}"
            },
            success: function (response) {
                // Handle success, update the UI, close the modal, etc.
                alert('Template duplicated successfully');
                $('#form-modal').modal('hide');
                location.reload();
            },
            error: function (xhr, status, error) {
                // Handle error, display error message, etc.
                alert('Error duplicating the template');
            }
        });
    });

    /*async function loadFile(url) {
        try {
            const response = await fetch(url);
            if (!response.ok) {
                console.error("Failed to fetch the file:", url);
                return;
            }

            const fileBlob = await response.blob();
            const fileName = url.split("/").pop();
            const suffixArr = fileName.split("."), suffix = suffixArr[suffixArr.length - 1];

            if (suffix !== "xlsx") {
                console.error("Invalid file format:", url);
                return;
            }

            LuckyExcel.transformExcelToLucky(fileBlob, function (exportJson, luckysheetfile) {
                if (exportJson.sheets == null || exportJson.sheets.length == 0) {
                    console.error("Failed to read the content of the excel file, currently does not support xls files!", url);
                    return;
                }
                //console.log(exportJson, luckysheetfile);
                console.log(exportJson);
                /!*window.luckysheet.destroy();

                window.luckysheet.create({
                    container: 'luckysheet', //luckysheet is the container id
                    showinfobar: false,
                    data: exportJson.sheets,
                    title: exportJson.info.name,
                    userInfo: exportJson.info.name
                });*!/

                // Send the luckysheetfile value to the Laravel controller
                $.ajax({
                    url: "/save-template",
                    method: "POST",
                    data: {
                        name: fileName,
                        catalogue: 1,
                        hash: JSON.stringify(exportJson.sheets)
                    }
                });
                location.reload();
            });

        } catch (error) {
            console.error("Error fetching the file:", url, error);
        }
    }

    async function loadFiles() {
        const fileListUrl = 'http://filee.test/'; // Replace this with the URL of your API that returns the list of .xlsx files

        try {
            const response = await fetch(fileListUrl);
            if (!response.ok) {
                alert("Failed to fetch the file list");
                return;
            }

            const fileList = await response.json(); // Assume the API returns a JSON array of URLs
            for (const fileUrl of fileList) {
                loadFile(fileUrl);
            }

        } catch (error) {
            console.error("Error fetching the file list:", error);
        }
    }
    document.getElementById('loadFilesButton').addEventListener('click', loadFiles);*/
    function loadDatas() {
        window.location.href = '{{ route('updateTemplateData') }}';
    }

    document.getElementById('loadDataButton').addEventListener('click', loadDatas);
</script>
</html>
