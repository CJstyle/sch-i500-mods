.class public Lcom/sec/android/app/cradle/ScreenSaver;
.super Landroid/app/Activity;
.source "ScreenSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;
    }
.end annotation


# static fields
.field public static CLOCK_HEIGHT:I

.field public static CLOCK_WIDTH:I

.field public static SCREENSAVER_HEIGHT:I

.field public static SCREENSAVER_WIDTH:I


# instance fields
.field private brightness_Day:I

.field private display:Landroid/view/Display;

.field private hour:I

.field private mAmpmText_sc:Landroid/widget/TextView;

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockLinearLayout:Landroid/widget/RelativeLayout;

.field private mDate:Ljava/util/Date;

.field private mDayMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHourView1_sc:Landroid/view/View;

.field private mHourView2_sc:Landroid/view/View;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMinView1_sc:Landroid/view/View;

.field private mMinView2_sc:Landroid/view/View;

.field private mOldBrightness:I

.field private mOldBrightnessMode:I

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mScreenSaverLayout:Landroid/widget/RelativeLayout;

.field private mScrnSaverDateText:Landroid/widget/TextView;

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon_sc:Landroid/view/View;

.field private min:I

.field private sec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x10e

    sput v0, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_HEIGHT:I

    .line 74
    const/16 v0, 0x258

    sput v0, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->sec:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 299
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    .line 313
    new-instance v0, Lcom/sec/android/app/cradle/ScreenSaver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/ScreenSaver$1;-><init>(Lcom/sec/android/app/cradle/ScreenSaver;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    return-void

    .line 299
    :array_0
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/ScreenSaver;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/ScreenSaver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->setOldBrightness()V

    return-void
.end method

.method private animateScreenSaver()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 239
    new-instance v2, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;

    invoke-direct {v2, p0}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;-><init>(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 240
    .local v2, lNonRepeat:Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;
    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_HEIGHT:I

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->getNextInt(II)I

    move-result v1

    .line 241
    .local v1, TOP:I
    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_WIDTH:I

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->getNextInt(II)I

    move-result v0

    .line 243
    .local v0, LEFT:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mClockLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 244
    return-void
.end method

.method private dismissScreenSaver()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "old_brightness"

    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v1, "old_brightness_mode"

    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightnessMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->setResult(ILandroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->finish()V

    .line 232
    return-void
.end method

.method private setHour(I)V
    .locals 4
    .parameter "second"

    .prologue
    .line 286
    div-int/lit8 v0, p1, 0xa

    .line 287
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 288
    .local v1, i2:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView1_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView2_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    return-void
.end method

.method private setMinute(I)V
    .locals 4
    .parameter "minute"

    .prologue
    .line 293
    div-int/lit8 v0, p1, 0xa

    .line 294
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 295
    .local v1, i2:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView1_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView2_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    return-void
.end method

.method private setOldBrightness()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v1, "ScreenSaver"

    .line 206
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightnessMode:I

    if-ne v1, v2, :cond_1

    .line 210
    const-string v1, "ScreenSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screensaver SCREEN_BRIGHTNESS_MODE_AUTOMATIC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v1, "ScreenSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screensaver setOldBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setScreenSaverBrightness()V
    .locals 3

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDayMode:Z

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v2, 0x14

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 197
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0xc

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v2, "ScreenSaver"

    const-string v3, "onCreate of ScreenSaver...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 83
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_0

    .line 87
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_HEIGHT:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_HEIGHT:I

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_WIDTH:I

    .line 100
    :goto_0
    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScreenSaverLayout:Landroid/widget/RelativeLayout;

    .line 101
    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mClockLinearLayout:Landroid/widget/RelativeLayout;

    .line 102
    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView1_sc:Landroid/view/View;

    .line 103
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView2_sc:Landroid/view/View;

    .line 104
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView1_sc:Landroid/view/View;

    .line 105
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView2_sc:Landroid/view/View;

    .line 106
    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTimeColon_sc:Landroid/view/View;

    .line 107
    const v2, 0x7f0a004f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f0a004e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v0

    .line 111
    .local v0, time:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScreenSaverLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "daymode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDayMode:Z

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "brightness_day"

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->brightness_Day:I

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "old_brightness"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "old_brightness_mode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightnessMode:I

    .line 119
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->setScreenSaverBrightness()V

    .line 120
    return-void

    .line 96
    .end local v0           #time:J
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_HEIGHT:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_HEIGHT:I

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_WIDTH:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->setOldBrightness()V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "Updated.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "Alarm.To.Update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDate:Ljava/util/Date;

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->startAnimation()V

    .line 143
    return-void
.end method

.method public onTimeChanged()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 255
    .local v0, time:J
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    .line 256
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    if-le v2, v4, :cond_1

    .line 258
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    .line 263
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->sec:I

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTimeColon_sc:Landroid/view/View;

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setHour(I)V

    .line 276
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setMinute(I)V

    .line 277
    const-string v2, "AA"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const v3, 0x7f02003d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 282
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    const-string v3, "EEEE MMMM dd, yyyy"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void

    .line 260
    :cond_1
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    if-nez v2, :cond_0

    .line 261
    iput v4, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const v3, 0x7f02003e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 171
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->animateScreenSaver()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method
