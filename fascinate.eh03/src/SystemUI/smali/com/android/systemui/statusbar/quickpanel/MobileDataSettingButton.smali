.class public final Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "MobileDataSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;
    }
.end annotation


# instance fields
.field private mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 7

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 130
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 135
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070024

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 151
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 152
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$2;-><init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$3;-><init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const-string v3, "MobileDataSettingButton"

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "MobileDataSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled: set to  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v1, "MobileDataSettingButton"

    const-string v1, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 77
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f090015

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f090017

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 81
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    return-void

    .line 83
    :pswitch_0
    const v1, 0x7f020012

    .line 84
    const v4, 0x7f020014

    .line 85
    goto :goto_0

    .line 87
    :pswitch_1
    const v1, 0x7f020011

    .line 88
    const v4, 0x7f020013

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setActivateStatus(I)V

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateIcons()V

    .line 73
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "MobileDataSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V

    .line 102
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "MobileDataSettingButton"

    .line 105
    const-string v1, "MobileDataSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_mobiledata_checked"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, mChecked:I
    const-string v1, "MobileDataSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data waring checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->onDisplayMobileDataOffAlert()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 48
    const-string v0, "MobileDataSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    .line 54
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 59
    const-string v0, "MobileDataSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setText(I)V

    .line 97
    return-void
.end method
