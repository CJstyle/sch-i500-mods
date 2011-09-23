.class Lcom/android/browser/BrowserDebug;
.super Ljava/lang/Object;
.source "BrowserDebug.java"


# static fields
.field private static final ANDROID_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.1-update1; en-gb; sec_aries Build/ERE27) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final LISMORE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (SAMSUNG; SAMSUNG-GT-S8500/S8500XXJHA; U; Bada/1.0; en-us) AppleWebKit/533.1 (KHTML, like Gecko) Dolfin/2.0 Mobile WVGA SMM-MMS/1.2.0 OPN-B"

.field static final LOGTAG:Ljava/lang/String; = "BrowserDebug"

.field private static mEditUserAgent:Landroid/widget/EditText;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    return-object v0
.end method

.method static dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 32
    const-string v3, "BrowserDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpWebView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Dump displayTree"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Dump domTree to file"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Dump domTree to log"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Dump renderTree to file"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Dump renderTree to log"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Instrument report"

    aput-object v4, v2, v3

    .line 43
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Choose DUMP type"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    new-instance v3, Lcom/android/browser/BrowserDebug$1;

    invoke-direct {v3, p1}, Lcom/android/browser/BrowserDebug$1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 91
    return-void
.end method

.method static editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 14
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 113
    const-string v11, "BrowserDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "editUserAgent"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    .line 118
    .local v10, settings:Landroid/webkit/WebSettings;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 122
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f03001c

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, mEditUserAgentView:Landroid/view/View;
    const v11, 0x7f0d0005

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    sput-object p0, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    .line 125
    sget-object v11, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v11, 0x7f0d005b

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 128
    .local v5, mRBUagentAndroid:Landroid/widget/RadioButton;
    const v11, 0x7f0d005c

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 129
    .local v8, mRBUagentIphone:Landroid/widget/RadioButton;
    const v11, 0x7f0d005d

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 130
    .local v7, mRBUagentDesktop:Landroid/widget/RadioButton;
    const v11, 0x7f0d005e

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 131
    .local v9, mRBUagentLismore:Landroid/widget/RadioButton;
    const v11, 0x7f0d005f

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 133
    .local v6, mRBUagentCustom:Landroid/widget/RadioButton;
    const-string v11, "Android"

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const-string v11, "Iphone"

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v11, "Desktop"

    invoke-virtual {v7, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const-string v11, "Lismore"

    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string v11, "Custom"

    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    const v11, 0x7f0d005a

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 143
    .local v4, mRBGroup:Landroid/widget/RadioGroup;
    new-instance v11, Lcom/android/browser/BrowserDebug$2;

    invoke-direct {v11}, Lcom/android/browser/BrowserDebug$2;-><init>()V

    invoke-virtual {v4, v11}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 162
    const-string v11, "Edit UserAgent"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string v11, "Ok"

    new-instance v12, Lcom/android/browser/BrowserDebug$3;

    invoke-direct {v12, v10}, Lcom/android/browser/BrowserDebug$3;-><init>(Landroid/webkit/WebSettings;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    const-string v11, "Cancel"

    new-instance v12, Lcom/android/browser/BrowserDebug$4;

    invoke-direct {v12}, Lcom/android/browser/BrowserDebug$4;-><init>()V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 187
    return-void
.end method
