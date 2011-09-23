.class public Lcom/sec/android/app/controlpanel/activity/HelpActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mHelpContentView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->loadPage()V

    return-void
.end method

.method private loadPage()V
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 42
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 46
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v2, "bg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_bg.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v2, "cs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_cs.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    const-string v2, "da"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_da.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_de.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_5
    const-string v2, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_el.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_6
    const-string v2, "es"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_es.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_7
    const-string v2, "et"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_et.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_8
    const-string v2, "fi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_fi.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_9
    const-string v2, "fr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_fr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_a
    const-string v2, "ga"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ga.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_b
    const-string v2, "hr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_hr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_c
    const-string v2, "hu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_hu.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_d
    const-string v2, "is"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_is.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_e
    const-string v2, "it"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_it.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_f
    const-string v2, "kk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_kk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_10
    const-string v2, "lt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_lt.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_11
    const-string v2, "lv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_lv.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_12
    const-string v2, "mk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_mk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_13
    const-string v2, "nl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_nl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_14
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_no.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_15
    const-string v2, "pl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_pl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_16
    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_pt.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_17
    const-string v2, "ru"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ru.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_18
    const-string v2, "sk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_19
    const-string v2, "sl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_1a
    const-string v2, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_1b
    const-string v2, "sv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sv.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_1c
    const-string v2, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_tr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_1d
    const-string v2, "uk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_uk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_1e
    const-string v2, "ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ro.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_1f
    const-string v2, "ja"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ja.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_en.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->requestWindowFeature(I)Z

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->requestWindowFeature(I)Z

    .line 26
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->setContentView(I)V

    .line 28
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->loadPage()V

    .line 38
    return-void
.end method
