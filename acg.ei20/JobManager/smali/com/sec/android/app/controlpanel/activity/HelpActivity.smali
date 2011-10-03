.class public Lcom/sec/android/app/controlpanel/activity/HelpActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;
    }
.end annotation


# instance fields
.field private mHelpContentView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->loadPage()V

    return-void
.end method

.method private loadPage()V
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 72
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v2, "bg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_bg.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v2, "cs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_cs.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v2, "da"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_da.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_de.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    const-string v2, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_el.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_6
    const-string v2, "es"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_es.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_7
    const-string v2, "et"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_et.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_8
    const-string v2, "fi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_fi.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_9
    const-string v2, "fr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_fr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_a
    const-string v2, "ga"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ga.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_b
    const-string v2, "hr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_hr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_c
    const-string v2, "hu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_hu.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_d
    const-string v2, "is"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_is.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_e
    const-string v2, "it"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_it.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_f
    const-string v2, "kk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_kk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_10
    const-string v2, "lt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_lt.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string v2, "lv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_lv.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_12
    const-string v2, "mk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_mk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string v2, "nl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_nl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_14
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_no.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_15
    const-string v2, "pl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_pl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_16
    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_pt.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_17
    const-string v2, "ru"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ru.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_18
    const-string v2, "sk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_19
    const-string v2, "sl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sl.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_1a
    const-string v2, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_1b
    const-string v2, "sv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_sv.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_1c
    const-string v2, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_tr.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_1d
    const-string v2, "uk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_uk.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_1e
    const-string v2, "ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ro.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_1f
    const-string v2, "ja"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_ja.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/help_en.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 59
    .local v0, menuId:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
