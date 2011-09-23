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
.field public static CLOCK_HEIGHT:I = 0x0

.field public static final CLOCK_PADDING_ALL_SIDES:I = 0xc

.field public static CLOCK_WIDTH:I = 0x0

.field public static SCREENSAVER_HEIGHT:I = 0x0

.field public static SCREENSAVER_WIDTH:I = 0x0

.field private static final SCREEN_SAVER_TIME_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ScreenSaver"


# instance fields
.field private brightness_Day:I

.field private display:Landroid/view/Display;

.field private hour:I

.field private mAmpmText_sc:Landroid/widget/TextView;

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockLinearLayout:Landroid/widget/RelativeLayout;

.field private mDate:Ljava/util/Date;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDayMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHourView1_sc:Landroid/view/View;

.field private mHourView2_sc:Landroid/view/View;

.field private mMinView1_sc:Landroid/view/View;

.field private mMinView2_sc:Landroid/view/View;

.field private mOldBrightness:I

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mScreenSaverLayout:Landroid/widget/RelativeLayout;

.field private mScrnSaverDateText:Landroid/widget/TextView;

.field private mStartDay:I

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon_sc:Landroid/view/View;

.field private mTimeTextView:Landroid/widget/TextView;

.field private min:I

.field private sec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x10e

    sput v0, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_HEIGHT:I

    .line 72
    const/16 v0, 0x258

    sput v0, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    iput v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->sec:I

    .line 255
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    .line 269
    new-instance v0, Lcom/sec/android/app/cradle/ScreenSaver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/ScreenSaver$1;-><init>(Lcom/sec/android/app/cradle/ScreenSaver;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    return-void

    .line 255
    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/ScreenSaver;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/os/IPowerManager;)Landroid/os/IPowerManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/ScreenSaver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    return v0
.end method

.method private animateScreenSaver()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 195
    new-instance v2, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;

    invoke-direct {v2, p0}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;-><init>(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 196
    .local v2, lNonRepeat:Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;
    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_HEIGHT:I

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->getNextInt(II)I

    move-result v1

    .line 197
    .local v1, TOP:I
    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_WIDTH:I

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->getNextInt(II)I

    move-result v0

    .line 199
    .local v0, LEFT:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mClockLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 200
    return-void
.end method

.method private dismissScreenSaver()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "old_brightness"

    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->finish()V

    .line 188
    return-void
.end method

.method private setHour(I)V
    .locals 4
    .parameter "second"

    .prologue
    .line 242
    div-int/lit8 v0, p1, 0xa

    .line 243
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 244
    .local v1, i2:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView1_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView2_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    return-void
.end method

.method private setMinute(I)V
    .locals 4
    .parameter "minute"

    .prologue
    .line 249
    div-int/lit8 v0, p1, 0xa

    .line 250
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 251
    .local v1, i2:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView1_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView2_sc:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    return-void
.end method

.method private setScreenSaverBrightness()V
    .locals 4

    .prologue
    .line 164
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDayMode:Z

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v2, "ScreenSaver"

    const-string v3, "onCreate of ScreenSaver...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    .line 79
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_HEIGHT:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_HEIGHT:I

    .line 83
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sget v3, Lcom/sec/android/app/cradle/ScreenSaver;->CLOCK_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    sput v2, Lcom/sec/android/app/cradle/ScreenSaver;->SCREENSAVER_WIDTH:I

    .line 85
    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScreenSaverLayout:Landroid/widget/RelativeLayout;

    .line 86
    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mClockLinearLayout:Landroid/widget/RelativeLayout;

    .line 87
    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView1_sc:Landroid/view/View;

    .line 88
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHourView2_sc:Landroid/view/View;

    .line 89
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView1_sc:Landroid/view/View;

    .line 90
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mMinView2_sc:Landroid/view/View;

    .line 91
    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTimeColon_sc:Landroid/view/View;

    .line 92
    const v2, 0x7f0a004f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0a004e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v0

    .line 96
    .local v0, time:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScreenSaverLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "daymode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDayMode:Z

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "brightness_day"

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->brightness_Day:I

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "old_brightness"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mOldBrightness:I

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->setScreenSaverBrightness()V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "Updated.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "Alarm.To.Update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/cradle/ScreenSaver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mDate:Ljava/util/Date;

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->startAnimation()V

    .line 128
    return-void
.end method

.method public onTimeChanged()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 211
    .local v0, time:J
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    .line 212
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    if-le v2, v4, :cond_1

    .line 214
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    .line 219
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    iput v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->sec:I

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mTimeColon_sc:Landroid/view/View;

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setHour(I)V

    .line 232
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->min:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/ScreenSaver;->setMinute(I)V

    .line 233
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

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mScrnSaverDateText:Landroid/widget/TextView;

    const-string v3, "EEEE MMMM dd, yyyy"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void

    .line 216
    :cond_1
    iget v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    if-nez v2, :cond_0

    .line 217
    iput v4, p0, Lcom/sec/android/app/cradle/ScreenSaver;->hour:I

    goto :goto_0

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mAmpmText_sc:Landroid/widget/TextView;

    const v3, 0x7f02007a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->dismissScreenSaver()V

    .line 149
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/cradle/ScreenSaver;->animateScreenSaver()V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method
