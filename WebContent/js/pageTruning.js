//页面刷新的翻页
function pageTurning(num) {
    var currentPage = parseInt("${returnLoanPage.currentPage}");
    var allPageNum = parseInt("${returnLoanPage.allPageNum}");
    switch (num) {
        case 0:
            currentPage = 1;
            break;
        case 1:
            if (currentPage == 1)
                return;
            currentPage = 1;
            break;
        case 2:
            if (currentPage == 1)
                return;
            currentPage--;
            break;
        case 3:
            if (currentPage == allPageNum)
                return;
            currentPage++;
            break;
        case 4:
            if (currentPage == allPageNum)
                return;
            currentPage = allPageNum;
            break;
    }
    document.getElementById("currentPage").value = currentPage;
    document.getElementById("form1").submit();
}