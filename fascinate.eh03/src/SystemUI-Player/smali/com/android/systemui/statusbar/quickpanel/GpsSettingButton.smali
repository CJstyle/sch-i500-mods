.class public final Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;
    }
.end annotation


# instance fields
.field private mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    return-void
.end method

.method private onDisplayGPSOnAlert()V
    .locals 6

    .prologue
    .line 114
    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 116
    .local v2, mGpsAlertLayout:Landroid/view/LayoutInflater;
    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, mGpsAlertView:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070026

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 122
    const v4, 0x7f070028

    new-instance v5, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$2;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    return-void
.end method

.method private setGPSEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, lbsChanged:Landroid/content/Intent;
    const-string v1, "lbsEnabled"

    if-nez p1, :cond_0

    move v2, v5

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    const-string v1, "LBSsettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LBS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in GpsSettingButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    :cond_0
    move v2, v4

    .line 107
    goto :goto_0

    :cond_1
    move v3, v4

    .line 109
    goto :goto_1
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 69
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 70
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f090012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f090014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 74
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    return-void

    .line 76
    :pswitch_0
    const v1, 0x7f02000f

    .line 77
    const v4, 0x7f020014

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    const v1, 0x7f02000e

    .line 81
    const v4, 0x7f020013

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateIcons()V

    .line 66
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "GpsSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->onDisplayGPSOnAlert()V

    .line 96
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "GpsSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 101
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 42
    const-string v0, "GpsSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    .line 48
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 53
    const-string v0, "GpsSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setText(I)V

    .line 90
    return-void
.end method
