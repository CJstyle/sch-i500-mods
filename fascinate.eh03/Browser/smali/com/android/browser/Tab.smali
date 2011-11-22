.class Lcom/android/browser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Tab$8;,
        Lcom/android/browser/Tab$SubWindowChromeClient;,
        Lcom/android/browser/Tab$SubWindowClient;,
        Lcom/android/browser/Tab$ErrorDialog;,
        Lcom/android/browser/Tab$VoiceSearchData;,
        Lcom/android/browser/Tab$PickerData;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/browser/BrowserActivity;

.field private mAppId:Ljava/lang/String;

.field private mChildTabs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseOnExit:Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mDownloadListener:Landroid/webkit/DownloadListener;

.field private mErrorConsole:Lcom/android/browser/ErrorConsoleView;

.field private mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

.field private mInForeground:Z

.field private mInLoad:Z

.field private final mInflateService:Landroid/view/LayoutInflater;

.field private mLoadStartTime:J

.field private mLockIconType:I

.field private mMainView:Landroid/webkit/WebView;

.field private mOriginalUrl:Ljava/lang/String;

.field private mParentTab:Lcom/android/browser/Tab;

.field private mPickerData:Lcom/android/browser/Tab$PickerData;

.field private mPrevLockIconType:I

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/Tab$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewContainer:Landroid/view/View;

.field mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

.field private mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

.field private final mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field public mbIsDownloadRss:Z


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "w"
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mbIsDownloadRss:Z

    .line 417
    new-instance v0, Lcom/android/browser/Tab$1;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$1;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 464
    new-instance v0, Lcom/android/browser/Tab$2;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$2;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 853
    new-instance v0, Lcom/android/browser/Tab$3;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$3;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 1350
    iput-object p1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 1351
    iput-boolean p3, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    .line 1352
    iput-object p4, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1353
    iput-object p5, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    .line 1354
    iput v1, p0, Lcom/android/browser/Tab;->mLockIconType:I

    .line 1355
    iput v1, p0, Lcom/android/browser/Tab;->mPrevLockIconType:I

    .line 1356
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInLoad:Z

    .line 1357
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1359
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mInflateService:Landroid/view/LayoutInflater;

    .line 1363
    iget-object v0, p0, Lcom/android/browser/Tab;->mInflateService:Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    .line 1365
    new-instance v0, Lcom/android/browser/Tab$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$4;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 1390
    new-instance v0, Lcom/android/browser/Tab$5;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$5;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 1406
    const-string v0, "Browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p0, p2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1409
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/browser/Tab;->processNextError()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mInLoad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/Tab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/browser/Tab;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/Tab;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/browser/Tab;->mLockIconType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/Tab;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method private populatePickerData(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1900
    new-instance v0, Lcom/android/browser/Tab$PickerData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/Tab$PickerData;-><init>(Lcom/android/browser/Tab$1;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    .line 1901
    if-eqz p1, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    .line 1903
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    .line 1904
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mFavicon:Landroid/graphics/Bitmap;

    .line 1905
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v0, v0, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v1, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v1, v1, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    .line 1909
    :cond_0
    return-void
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 5
    .parameter "err"
    .parameter "desc"

    .prologue
    .line 426
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 427
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    .line 430
    .local v0, d:Lcom/android/browser/Tab$ErrorDialog;
    iget v3, v0, Lcom/android/browser/Tab$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    .line 446
    .end local v0           #d:Lcom/android/browser/Tab$ErrorDialog;
    :cond_2
    :goto_0
    return-void

    .line 435
    :cond_3
    new-instance v1, Lcom/android/browser/Tab$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_4

    const v3, 0x7f0900b2

    :goto_1
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/Tab$ErrorDialog;-><init>(Lcom/android/browser/Tab;ILjava/lang/String;I)V

    .line 440
    .local v1, errDialog:Lcom/android/browser/Tab$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 443
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v3, :cond_2

    .line 444
    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0

    .line 435
    .end local v1           #errDialog:Lcom/android/browser/Tab$ErrorDialog;
    :cond_4
    const v3, 0x7f0900b1

    goto :goto_1
.end method

.method private showError(Lcom/android/browser/Tab$ErrorDialog;)V
    .locals 4
    .parameter "errDialog"

    .prologue
    .line 449
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 450
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 455
    .local v0, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 458
    .end local v0           #d:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method activateVoiceSearchMode(Landroid/content/Intent;)V
    .locals 27
    .parameter "intent"

    .prologue
    .line 220
    const/16 v18, 0x0

    .line 221
    .local v18, index:I
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 223
    .local v23, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_4

    .line 224
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 226
    .local v26, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 228
    .local v17, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 233
    .local v11, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 234
    .local v24, size:I
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 235
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "improper extras passed in Intent"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 237
    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 241
    :cond_2
    const/16 v17, 0x0

    .line 242
    const/4 v11, 0x0

    .line 244
    :cond_3
    new-instance v5, Lcom/android/browser/Tab$VoiceSearchData;

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/Tab$VoiceSearchData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    const-string v6, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    sget-object v6, Lcom/android/browser/Tab$VoiceSearchData;->SOURCE_IS_GOOGLE:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 253
    .end local v11           #baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #size:I
    .end local v26           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v5, "intent_extra_data_key"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 255
    .local v15, extraData:Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 256
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_5

    .line 258
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "index must be less than size of mVoiceSearchResults"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 261
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v5, :cond_6

    .line 262
    new-instance v22, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v22, logIntent:Landroid/content/Intent;
    const-string v5, "extra_event"

    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v5, "index"

    move-object/from16 v0, v22

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    .end local v22           #logIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v5, :cond_7

    .line 274
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 275
    .local v21, latest:Landroid/content/Intent;
    const-string v5, "intent_extra_data_key"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 279
    .end local v21           #latest:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/browser/BrowserActivity;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 284
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 287
    .local v25, uriString:Ljava/lang/String;
    if-eqz v25, :cond_a

    .line 288
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 289
    .local v14, dataUri:Landroid/net/Uri;
    const-string v5, "inline"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_9

    move/from16 v6, v18

    :goto_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    .local v6, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    move-object v5, v0

    const-string v7, "inline"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "utf-8"

    move-object v10, v6

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :goto_1
    return-void

    .line 294
    .restart local v14       #dataUri:Landroid/net/Uri;
    .restart local v25       #uriString:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    .line 306
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchUrls:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 312
    :cond_b
    const/16 v16, 0x0

    .line 313
    .local v16, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x0

    move v13, v5

    .line 316
    .local v13, bundleIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 317
    .local v12, bundle:Landroid/os/Bundle;
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 318
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 319
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    .end local v16           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 320
    .restart local v16       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 321
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 322
    .local v20, key:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #bundleIndex:I
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_c
    move/from16 v13, v18

    .line 314
    goto :goto_2

    .line 326
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method addChildTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1649
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1652
    invoke-virtual {p1, p0}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    .line 1653
    return-void
.end method

.method attachSubWindow(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 1546
    const v0, 0x7f0d0040

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    sget-object v1, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    :cond_1
    return-void
.end method

.method attachTabToContentView(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "content"

    .prologue
    const-string v4, "Tab"

    .line 1569
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 1602
    :goto_0
    return-void

    .line 1575
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1577
    .local v1, wrapper:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1578
    .local v0, parent:Landroid/view/ViewGroup;
    if-eq v0, v1, :cond_3

    .line 1579
    if-eqz v0, :cond_1

    .line 1580
    const-string v2, "Tab"

    const-string v2, "mMainView already has a parent in attachTabToContentView!"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1584
    :cond_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1589
    :goto_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #parent:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1590
    .restart local v0       #parent:Landroid/view/ViewGroup;
    if-eq v0, p1, :cond_4

    .line 1591
    if-eqz v0, :cond_2

    .line 1592
    const-string v2, "Tab"

    const-string v2, "mContainer already has a parent in attachTabToContentView!"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v2, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1596
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/browser/Tab;->attachSubWindow(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1586
    :cond_3
    const-string v2, "Tab"

    const-string v2, "mMainView is already attached to wrapper in attachTabToContentView!"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1598
    :cond_4
    const-string v2, "Tab"

    const-string v2, "mContainer is already attached to content in attachTabToContentView!"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method clearInLoad()V
    .locals 1

    .prologue
    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInLoad:Z

    .line 1882
    return-void
.end method

.method clearPickerData()V
    .locals 1

    .prologue
    .line 1922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    .line 1923
    return-void
.end method

.method closeDialog(Lcom/android/browser/WebDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2028
    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2029
    .local v0, parent:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2030
    :cond_0
    return-void
.end method

.method closeOnExit()Z
    .locals 1

    .prologue
    .line 1840
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    return v0
.end method

.method createSubWindow()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1480
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 1481
    iget-object v2, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 1482
    iget-object v2, p0, Lcom/android/browser/Tab;->mInflateService:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1484
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    const v3, 0x7f0d0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1485
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1487
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 1489
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1490
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/browser/Tab$SubWindowClient;

    iget-object v4, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v5, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClient;Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1492
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/browser/Tab$SubWindowChromeClient;

    iget-object v4, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v3, p0, v4}, Lcom/android/browser/Tab$SubWindowChromeClient;-><init>(Lcom/android/browser/Tab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1496
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/browser/Tab$6;

    invoke-direct {v3, p0}, Lcom/android/browser/Tab$6;-><init>(Lcom/android/browser/Tab;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1510
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1511
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 1512
    .local v1, s:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Lcom/android/browser/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1513
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    const v3, 0x7f0d0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1515
    .local v0, cancel:Landroid/widget/ImageButton;
    new-instance v2, Lcom/android/browser/Tab$7;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$7;-><init>(Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v2, v6

    .line 1523
    .end local v0           #cancel:Landroid/widget/ImageButton;
    .end local v1           #s:Lcom/android/browser/BrowserSettings;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1451
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 1453
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1454
    .local v0, webView:Landroid/webkit/WebView;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1455
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1457
    .end local v0           #webView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method dismissSubWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1530
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 1532
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 1534
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1535
    iput-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1536
    iput-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1538
    :cond_0
    return-void
.end method

.method getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getChildTabs()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    return-object v0
.end method

.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;
    .locals 2
    .parameter "createIfNecessary"

    .prologue
    .line 1818
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    if-nez v0, :cond_0

    .line 1819
    new-instance v0, Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Lcom/android/browser/ErrorConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    .line 1820
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->setWebView(Landroid/webkit/WebView;)V

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v0, v0, Lcom/android/browser/Tab$PickerData;->mFavicon:Landroid/graphics/Bitmap;

    .line 1806
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1734
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1736
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GeolocationPermissionsPrompt;

    iput-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    .line 1738
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->init()V

    .line 1740
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method getLockIconType()I
    .locals 1

    .prologue
    .line 1867
    iget v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    return v0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method getSubWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v0, v0, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    .line 1794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1708
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v0, v0, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    .line 1781
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method inLoad()Z
    .locals 1

    .prologue
    .line 1875
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInLoad:Z

    return v0
.end method

.method public isInVoiceSearchMode()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1671
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1675
    :cond_0
    return-void
.end method

.method populatePickerData()V
    .locals 3

    .prologue
    .line 1885
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 1886
    invoke-virtual {p0}, Lcom/android/browser/Tab;->populatePickerDataFromSavedState()V

    .line 1895
    :goto_0
    return-void

    .line 1892
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1893
    .local v1, list:Landroid/webkit/WebBackForwardList;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    move-object v0, v2

    .line 1894
    .local v0, item:Landroid/webkit/WebHistoryItem;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->populatePickerData(Landroid/webkit/WebHistoryItem;)V

    goto :goto_0

    .line 1893
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method populatePickerDataFromSavedState()V
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1916
    :cond_0
    new-instance v0, Lcom/android/browser/Tab$PickerData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/Tab$PickerData;-><init>(Lcom/android/browser/Tab$1;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    .line 1917
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    .line 1918
    iget-object v0, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method putInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1692
    invoke-virtual {p0}, Lcom/android/browser/Tab;->pause()V

    .line 1693
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1694
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1697
    :cond_0
    return-void
.end method

.method putInForeground()V
    .locals 2

    .prologue
    .line 1678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1679
    invoke-virtual {p0}, Lcom/android/browser/Tab;->resume()V

    .line 1680
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1681
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    .line 1688
    :cond_1
    return-void
.end method

.method removeFromTree()V
    .locals 3

    .prologue
    .line 1464
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 1465
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 1466
    .local v1, t:Lcom/android/browser/Tab;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1470
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1

    .line 1471
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1473
    :cond_1
    return-void
.end method

.method removeSubWindow(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1560
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 1562
    :cond_0
    return-void
.end method

.method removeTabFromContentView(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1617
    .local v0, wrapper:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1618
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1619
    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 1620
    invoke-virtual {p0, p1}, Lcom/android/browser/Tab;->removeSubWindow(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1848
    iget v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    iput v0, p0, Lcom/android/browser/Tab;->mPrevLockIconType:I

    .line 1849
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    .line 1850
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    .line 1853
    :cond_0
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1982
    if-nez p1, :cond_0

    move v1, v2

    .line 1997
    :goto_0
    return v1

    .line 1987
    :cond_0
    iput-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1988
    iput-object v1, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    .line 1989
    const-string v1, "closeonexit"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    .line 1990
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1991
    const-string v1, "originalUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    .line 1993
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1994
    .local v0, list:Landroid/webkit/WebBackForwardList;
    if-nez v0, :cond_1

    move v1, v2

    .line 1995
    goto :goto_0

    .line 1997
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method resume()V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1662
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1666
    :cond_0
    return-void
.end method

.method revertLockIcon()V
    .locals 1

    .prologue
    .line 1860
    iget v0, p0, Lcom/android/browser/Tab;->mPrevLockIconType:I

    iput v0, p0, Lcom/android/browser/Tab;->mLockIconType:I

    .line 1861
    return-void
.end method

.method public revertVoiceSearchMode()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 180
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->revertVoiceTitleBar()V

    .line 184
    :cond_0
    return-void
.end method

.method saveState()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1946
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 1947
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move v2, v6

    .line 1975
    :goto_0
    return v2

    .line 1947
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1950
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1951
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1954
    .local v1, list:Landroid/webkit/WebBackForwardList;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    move-object v0, v2

    .line 1955
    .local v0, item:Landroid/webkit/WebHistoryItem;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->populatePickerData(Landroid/webkit/WebHistoryItem;)V

    .line 1957
    iget-object v2, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v2, v2, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1958
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "currentUrl"

    iget-object v4, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v4, v4, Lcom/android/browser/Tab$PickerData;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v2, v2, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1961
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "currentTitle"

    iget-object v4, p0, Lcom/android/browser/Tab;->mPickerData:Lcom/android/browser/Tab$PickerData;

    iget-object v4, v4, Lcom/android/browser/Tab$PickerData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_3
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "closeonexit"

    iget-boolean v4, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1964
    iget-object v2, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1965
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "appid"

    iget-object v4, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1968
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "originalUrl"

    iget-object v4, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    :cond_5
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_6

    .line 1972
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "parentTab"

    iget-object v4, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    move v2, v6

    .line 1975
    goto :goto_0

    .line 1954
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    :cond_7
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1756
    return-void
.end method

.method setOriginalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/android/browser/Tab;->mOriginalUrl:Ljava/lang/String;

    .line 1770
    return-void
.end method

.method setParentTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "parent"

    .prologue
    const-string v2, "parentTab"

    .line 1627
    iput-object p1, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    .line 1632
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1633
    if-nez p1, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method setSavedState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1938
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-ne v1, p1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-eqz v1, :cond_2

    .line 1422
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1426
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1428
    .local v0, wrapper:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1431
    iput-object p1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1433
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1435
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1440
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1441
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    goto :goto_0
.end method

.method showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;
    .locals 6
    .parameter "dialog"

    .prologue
    .line 2006
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 2008
    .local v1, view:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    const v3, 0x7f0d0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2014
    .local v0, container:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->show()V

    .line 2015
    const/4 v2, 0x0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2018
    invoke-virtual {p1, v1}, Lcom/android/browser/WebDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 2019
    return-object v1

    .line 2011
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 2012
    .restart local v1       #view:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/widget/LinearLayout;

    .restart local v0       #container:Landroid/widget/LinearLayout;
    goto :goto_0
.end method

.method public voiceSearchSourceIsGoogle()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-boolean v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
