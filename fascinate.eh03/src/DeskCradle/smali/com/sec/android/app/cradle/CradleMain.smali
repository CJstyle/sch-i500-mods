.class public Lcom/sec/android/app/cradle/CradleMain;
.super Landroid/app/Activity;
.source "CradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/sec/android/app/cradle/Navigator;


# static fields
.field public static STATE_CALENDAR:I

.field public static STATE_CLOCK_ANALOG:I

.field public static STATE_CLOCK_DIGITAL_1:I

.field public static STATE_CLOCK_DIGITAL_2:I

.field public static STATE_CLOCK_DIGITAL_3:I

.field public static STATE_CLOCK_DIGITAL_4:I

.field public static STATE_NO_CLOCK_CALENDAR:I

.field private static mIsNowLoadingWeather:Z


# instance fields
.field private final SCREEN_SAVER_COLOR:I

.field private final SCREEN_SAVER_COLOR_DIM:I

.field private final SCREEN_SAVER_MOVE_DELAY:J

.field private final SCREEN_SAVER_MOVE_MSG:I

.field private final SCREEN_SAVER_TIMEOUT:J

.field private final SCREEN_SAVER_TIMEOUT_MSG:I

.field private cityLocation:Ljava/lang/String;

.field public dayMode:Z

.field private hour:I

.field private mAlarmButton:Landroid/view/View;

.field private mAmpmText:Landroid/widget/TextView;

.field private mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

.field private mAnalogClockAmPm:Landroid/widget/TextView;

.field private mAnalogClockDate:Landroid/widget/TextView;

.field private mAnalogClockMonth:Landroid/widget/TextView;

.field private mAnalogClockTime:Landroid/widget/TextView;

.field private mAnalogClockView:Landroid/view/View;

.field private mBackground:Landroid/widget/ImageView;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBigNumbers:[I

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarView:Landroid/view/View;

.field public mCityLocationName:Ljava/lang/String;

.field private mController:Lcom/sec/android/app/cradle/Controller;

.field private mCurrentCityIdx:I

.field mCurrentClockView:I

.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private mCurrentOrientation:I

.field private mDailyBriefingButton:Landroid/view/View;

.field private mDate:Ljava/util/Date;

.field private mDateText:Landroid/widget/TextView;

.field private mDayModeButton:Landroid/widget/Button;

.field private mDigitalClockView:Landroid/view/View;

.field private mDimmed:Z

.field private mEnableVoiceSearch:Z

.field public mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mGalleryButton:Landroid/view/View;

.field private mGoExitButton:Landroid/widget/Button;

.field private final mHandy:Landroid/os/Handler;

.field private mHasVoiceSearch:Z

.field private mHourView1:Landroid/view/View;

.field private mHourView2:Landroid/view/View;

.field private mIsSetWeatherRefresh:Z

.field public mLaunchedFromDock:Z

.field private mMinView1:Landroid/view/View;

.field private mMinView2:Landroid/view/View;

.field private mMonthClockView:Landroid/widget/TextView;

.field private mMonthNumbers:[I

.field private mMonthView:Lcom/sec/android/app/cradle/MonthView;

.field private mMusicButton:Landroid/view/View;

.field private mPluggedIn:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRNG:Ljava/util/Random;

.field private mRefreshTime:J

.field private mRefreshTimeInterval:I

.field private mScreenDate:Landroid/widget/TextView;

.field private mScreenSaverMode:Z

.field private mSelectCityButton:Landroid/view/View;

.field public mSelectedCity:Ljava/lang/String;

.field private mSettingButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTemNumbers:[I

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon:Landroid/view/View;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mVoiceCommandButton:Landroid/view/View;

.field private mWallpaperChanged:Z

.field mWallpaperType:I

.field private mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

.field private mWeatherView:Landroid/view/View;

.field private min:I

.field private onedayUrl:Ljava/lang/String;

.field private sec:I

.field private thrddayUrl:Ljava/lang/String;

.field private todayUrl:Ljava/lang/String;

.field private twodayUrl:Ljava/lang/String;

.field public weatherList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/AccuWeatherContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    sput v1, Lcom/sec/android/app/cradle/CradleMain;->STATE_NO_CLOCK_CALENDAR:I

    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_1:I

    .line 87
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_2:I

    .line 88
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_3:I

    .line 89
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_4:I

    .line 90
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_ANALOG:I

    .line 91
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CALENDAR:I

    .line 148
    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 120
    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->todayUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->onedayUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->twodayUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->thrddayUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->cityLocation:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    .line 158
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 159
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    .line 166
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    .line 169
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_TIMEOUT:J

    .line 172
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_MOVE_DELAY:J

    .line 175
    const v0, -0x12300

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_COLOR:I

    .line 177
    const v0, -0xe7cfe8

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_COLOR_DIM:I

    .line 180
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 181
    const/16 v0, 0x2001

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->SCREEN_SAVER_MOVE_MSG:I

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 1252
    new-instance v0, Lcom/sec/android/app/cradle/CradleMain$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleMain$2;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1514
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    .line 1527
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    .line 1540
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    .line 1554
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    .line 1878
    new-instance v0, Lcom/sec/android/app/cradle/CradleMain$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleMain$6;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    return-void

    .line 1514
    :array_0
    .array-data 0x4
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1527
    :array_1
    .array-data 0x4
        0x56t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
    .end array-data

    .line 1540
    :array_2
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

    .line 1554
    :array_3
    .array-data 0x4
        0x12t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/cradle/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleMain;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->moveScreenSaver()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleMain;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleMain;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/CradleMain;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$514(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/cradle/CradleMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->saveScreen()V

    return-void
.end method

.method private changeCELSIUStoFAHRENHEIT(I)I
    .locals 6
    .parameter "cel"

    .prologue
    const/high16 v5, 0x3f80

    .line 1011
    add-int/lit8 v1, p1, 0x28

    int-to-double v1, v1

    const-wide v3, 0x3ffccccccccccccdL

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4044

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1013
    .local v0, Fahrenheit:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1016
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1
.end method

.method private changeFAHRENHEITtoCELSIUS(I)I
    .locals 6
    .parameter "fah"

    .prologue
    const/high16 v5, 0x3f80

    .line 1021
    add-int/lit8 v1, p1, 0x28

    int-to-double v1, v1

    const-wide v3, 0x3ffccccccccccccdL

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4044

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1022
    .local v0, celsius:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1025
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1
.end method

.method private checkRefresh()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "CradleMain"

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    .line 1227
    :goto_0
    return v0

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1222
    const-string v2, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jangth]checkrefresh current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v2, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jangth]checkrefresh mRefreshTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-wide v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v5

    .line 1225
    goto :goto_0

    :cond_2
    move v0, v6

    .line 1227
    goto :goto_0
.end method

.method private checkVoiceSearch()V
    .locals 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayWeatherItemData()V
    .locals 12

    .prologue
    const/4 v2, 0x4

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "F"

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 940
    if-ne v0, v9, :cond_1

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 947
    :cond_2
    const-string v0, "CradleMain"

    const-string v1, "displayWeatherItemData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iput v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_icon"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_saved_weather_temperature"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_saved_weather_unit"

    const-string v3, "C"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 959
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 960
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 963
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 965
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 966
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 967
    const v3, 0x7f0a002c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 968
    const v4, 0x7f0a002d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 971
    if-ne v7, v9, :cond_4

    .line 972
    const v7, 0x7f02011d

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 973
    const-string v0, "F"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 974
    invoke-direct {p0, v5}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v0

    .line 984
    :goto_1
    if-gez v0, :cond_5

    .line 985
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 986
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    :goto_2
    rem-int/lit16 v0, v0, 0x3e8

    .line 992
    div-int/lit8 v1, v0, 0x64

    .line 993
    rem-int/lit8 v5, v0, 0x64

    div-int/lit8 v5, v5, 0xa

    .line 994
    rem-int/lit8 v0, v0, 0xa

    .line 995
    if-nez v1, :cond_6

    .line 996
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1003
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v1, v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 978
    :cond_4
    const v7, 0x7f02011c

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 979
    const-string v0, "F"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v9, :cond_7

    .line 980
    invoke-direct {p0, v5}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v0

    goto :goto_1

    .line 989
    :cond_5
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 998
    :cond_6
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 999
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    move v0, v5

    goto :goto_1
.end method

.method private displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x4

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "F"

    .line 866
    if-nez p1, :cond_1

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 870
    if-ne v0, v8, :cond_0

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 933
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 879
    const-string v0, "CradleMain"

    const-string v1, "displayWeatherItemData refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 886
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 887
    iget v1, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 890
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 892
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 893
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 894
    const v3, 0x7f0a002c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 895
    const v4, 0x7f0a002d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 896
    iget v6, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    .line 897
    if-ne v5, v8, :cond_2

    .line 898
    const v5, 0x7f02011d

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    const-string v5, "F"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 900
    iget v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v0

    .line 911
    :goto_1
    if-gez v0, :cond_3

    .line 912
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 913
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    :goto_2
    rem-int/lit16 v0, v0, 0x3e8

    .line 920
    div-int/lit8 v1, v0, 0x64

    .line 921
    rem-int/lit8 v5, v0, 0x64

    div-int/lit8 v5, v5, 0xa

    .line 922
    rem-int/lit8 v0, v0, 0xa

    .line 923
    if-nez v1, :cond_4

    .line 924
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 932
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v1, v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 905
    :cond_2
    const v5, 0x7f02011c

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    iget-object v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    const-string v5, "F"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_5

    .line 907
    iget v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v0

    goto :goto_1

    .line 916
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 926
    :cond_4
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method private doDim()V
    .locals 2

    .prologue
    .line 1788
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1789
    if-nez v0, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1791
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    if-eqz v1, :cond_1

    .line 1792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1794
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getDefaultCityWeather()V
    .locals 3

    .prologue
    .line 1691
    const-string v0, "show_fare_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1692
    const-string v1, "do_not_show_fare_weather_popup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1698
    const-string v0, "CradleMain"

    const-string v1, "[jangth] getDefaultCityWeather start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    sget-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    if-nez v0, :cond_0

    .line 1700
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V

    .line 1703
    :cond_0
    return-void
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F
    .locals 5
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 1820
    const/4 v3, 0x0

    .line 1821
    .local v3, sum:F
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 1822
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [F

    .line 1824
    .local v2, strWidths:[F
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1827
    aget v4, v2, v0

    add-float/2addr v3, v4

    .line 1826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1829
    :cond_0
    return v3
.end method

.method private handleBatteryUpdate(II)V
    .locals 2
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1368
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 1369
    .local v0, pluggedIn:Z
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_1

    .line 1370
    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWakeLock(Z)V

    .line 1372
    if-eqz v0, :cond_1

    .line 1377
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_2

    .line 1379
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    .line 1382
    :cond_2
    return-void

    .line 1368
    .end local v0           #pluggedIn:Z
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private makeWallpaperBitmap()V
    .locals 9

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x0

    const v7, 0x7f0a0003

    const v6, 0x7f0a0002

    const/4 v5, 0x0

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    .line 788
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 829
    :goto_0
    return-void

    .line 790
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 793
    :cond_0
    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 794
    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 798
    :pswitch_1
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 800
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 802
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 803
    const-string v2, "CradleMain"

    const-string v3, "make bitmap "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    if-eqz v1, :cond_1

    .line 807
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 816
    :cond_1
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 817
    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 812
    :catch_1
    move-exception v1

    .line 813
    const-string v2, "CradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 805
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 807
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 810
    :cond_2
    :goto_2
    :try_start_5
    throw v2

    .line 808
    :catch_2
    move-exception v1

    .line 809
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 820
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 823
    :cond_3
    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 824
    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 825
    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private moveScreenSaver()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1996
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/cradle/CradleMain;->moveScreenSaverTo(II)V

    .line 1997
    return-void
.end method

.method private moveScreenSaverTo(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, -0x2

    .line 1999
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    .line 2026
    :goto_0
    return-void

    .line 2001
    :cond_0
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2003
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2004
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2006
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 2007
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2008
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 2009
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 2010
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 2016
    :goto_1
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v2, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2001

    const-wide/32 v2, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rem-long/2addr v4, v7

    sub-long v4, v7, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v1, p2

    move v2, p1

    goto :goto_1
.end method

.method private restoreScreen()V
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    .line 1993
    :goto_0
    return-void

    .line 1972
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    .line 1974
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupViews()V

    .line 1975
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupCalendarDays()V

    .line 1976
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->checkVoiceSearch()V

    .line 1977
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentClockView(I)V

    .line 1978
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1979
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->eventsChanged()V

    .line 1980
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    .line 1981
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWeatherDataFromDB()V

    .line 1982
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 1990
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    goto :goto_0
.end method

.method private savePreference()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 567
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_day_mode"

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method private saveScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1894
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 1952
    :goto_0
    return-void

    .line 1897
    :cond_0
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setContentView(I)V

    .line 1901
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1902
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1903
    if-nez v0, :cond_1

    .line 1904
    const-string v2, "CradleMain"

    const-string v3, "null oldTimeDate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1907
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    .line 1908
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1909
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1910
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1911
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1914
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1915
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1918
    :cond_2
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenDate:Landroid/widget/TextView;

    .line 1923
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1925
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1948
    const/4 v0, 0x0

    aget v0, v1, v0

    aget v1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->moveScreenSaverTo(II)V

    goto :goto_0
.end method

.method private scheduleScreenSaver()V
    .locals 4

    .prologue
    const/16 v2, 0x2000

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1964
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1967
    return-void
.end method

.method private setCurrentClockView(I)V
    .locals 3
    .parameter "clockView"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 832
    packed-switch p1, :pswitch_data_0

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 858
    :goto_0
    return-void

    .line 835
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 847
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHour(I)V
    .locals 4
    .parameter "second"

    .prologue
    .line 1489
    div-int/lit8 v0, p1, 0xa

    .line 1490
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1491
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1492
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1493
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1499
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1497
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 4
    .parameter "minute"

    .prologue
    .line 1502
    div-int/lit8 v0, p1, 0xa

    .line 1503
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1504
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1506
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1512
    :goto_0
    return-void

    .line 1509
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1510
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setWakeLock(Z)V
    .locals 4
    .parameter "hold"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 200
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 201
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x68

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 209
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    return-void

    .line 208
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setWeatherImg(Landroid/widget/ImageView;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020134

    const v3, 0x7f020136

    const v2, 0x7f020135

    const v1, 0x7f020131

    const v0, 0x7f02012f

    .line 1030
    packed-switch p2, :pswitch_data_0

    .line 1149
    :goto_0
    :pswitch_0
    return-void

    .line 1032
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1035
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1038
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1041
    :pswitch_4
    const v0, 0x7f020130

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1044
    :pswitch_5
    const v0, 0x7f020130

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1047
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1050
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1053
    :pswitch_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1056
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1059
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1062
    :pswitch_b
    const v0, 0x7f020132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1065
    :pswitch_c
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1068
    :pswitch_d
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1071
    :pswitch_e
    const v0, 0x7f020133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1074
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1077
    :pswitch_10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1080
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1083
    :pswitch_12
    const v0, 0x7f020137

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1086
    :pswitch_13
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1089
    :pswitch_14
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1092
    :pswitch_15
    const v0, 0x7f020138

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1095
    :pswitch_16
    const v0, 0x7f020138

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1098
    :pswitch_17
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1101
    :pswitch_18
    const v0, 0x7f020138

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1104
    :pswitch_19
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1107
    :pswitch_1a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1110
    :pswitch_1b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1113
    :pswitch_1c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1116
    :pswitch_1d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1119
    :pswitch_1e
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1122
    :pswitch_1f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1125
    :pswitch_20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1128
    :pswitch_21
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1131
    :pswitch_22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1134
    :pswitch_23
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1137
    :pswitch_24
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1140
    :pswitch_25
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1143
    :pswitch_26
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1146
    :pswitch_27
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1833
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleMain;->getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F

    move-result v0

    .line 1834
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1836
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1837
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1840
    :goto_0
    return-void

    .line 1839
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method private setupCalendarDays()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x14

    .line 421
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    sub-int/2addr v0, v1

    sub-int v1, v0, v1

    .line 423
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 425
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    add-int/lit8 v0, v1, 0x2

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 429
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    add-int/lit8 v0, v1, 0x3

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 433
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    add-int/lit8 v0, v1, 0x4

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 437
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    add-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 441
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    add-int/lit8 v0, v1, 0x6

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 445
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    add-int/lit8 v0, v1, 0x7

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 449
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const v3, 0x7f0a0012

    .line 337
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setContentView(I)V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 341
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    .line 345
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    .line 346
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    .line 347
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    .line 348
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    .line 349
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    .line 352
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    .line 370
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/AnalogClockView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    .line 371
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    .line 394
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    .line 395
    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    .line 397
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthClockView:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    .line 400
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 406
    :cond_0
    return-void
.end method

.method private startGetDefaultCityWeather()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1706
    const-string v0, "CradleMain"

    const-string v1, "[jangth] startGetDefaultCityWeather"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/WeatherClockData;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 1713
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1715
    if-eqz v1, :cond_1

    .line 1716
    new-instance v3, Lcom/sec/android/app/cradle/CradleMain$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/cradle/CradleMain$3;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1755
    new-instance v4, Lcom/sec/android/app/cradle/CradleMain$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/cradle/CradleMain$4;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1763
    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleMain$5;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    .line 1771
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/WeatherClockData;->getWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 1773
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1785
    :goto_0
    return-void

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->getCitycount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->checkNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1778
    sput-boolean v6, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1783
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method private toggleSpeakerMode()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "cradle_internal_speaker"

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_internal_speaker"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 1846
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1850
    if-eqz v0, :cond_2

    .line 1851
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1855
    :goto_1
    const-string v2, "cradle_internal_speaker"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1856
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1858
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_connected"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1860
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1863
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
    if-eqz v0, :cond_3

    move v0, v4

    .line 1871
    :goto_2
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1873
    const-string v1, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cradle Home Setting, send speaker broadcast state =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 1845
    goto :goto_0

    .line 1853
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    move v0, v5

    .line 1869
    goto :goto_2
.end method

.method private updateDayNightMode()V
    .locals 4

    .prologue
    const v3, 0x7f0200b6

    const v1, 0x7f0200a6

    const/4 v2, 0x1

    .line 631
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v0, v2, :cond_2

    .line 632
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 652
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    .line 665
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->doDim()V

    .line 700
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setDayMode(Z)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 703
    return-void

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 645
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_0

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 668
    :cond_2
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_1

    .line 687
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 697
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    .line 698
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->doDim()V

    goto :goto_1

    .line 670
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 673
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 681
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_3

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 668
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method eventsChanged()V
    .locals 2

    .prologue
    .line 861
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    .line 862
    .local v0, view:Lcom/sec/android/app/cradle/MonthView;
    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->reloadEvents2()V

    .line 863
    return-void
.end method

.method public getDefaultCityIndex()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, "cradle_weather_city_location"

    const-string v5, "cradle_weather_city"

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1162
    const-string v1, "cradle_weather_city"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1213
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_city"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1167
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1168
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_city_location"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    .line 1170
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1173
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1174
    iput v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1175
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 1176
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1177
    const-string v3, "cradle_weather_city"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1178
    const-string v3, "cradle_weather_city_location"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1179
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1182
    iget-object v0, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    goto :goto_0

    .line 1186
    :cond_4
    iput v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 1189
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1195
    :cond_5
    iget v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 1197
    iput v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1199
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 1200
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1201
    const-string v3, "cradle_weather_city"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1202
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1204
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1207
    iget-object v0, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1192
    :cond_6
    iget v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    goto :goto_1

    .line 1210
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_0
.end method

.method getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1799
    .line 1801
    :try_start_0
    const-string v0, "com.sec.android.app.twwallpaperchooser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1808
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_wallpaper_resource_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1810
    if-nez v1, :cond_0

    move-object v0, v4

    .line 1816
    :goto_0
    return-object v0

    .line 1802
    :catch_0
    move-exception v0

    .line 1803
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1804
    const-string v0, "CradleMain"

    const-string v1, "Fail to Get twwallpaperContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1805
    goto :goto_0

    .line 1813
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1814
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getWeatherDataFromDB()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    .line 1153
    return-void
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 0
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 1681
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    .line 533
    new-instance v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/cradle/MonthView;-><init>(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "com.sec.android.widgetapp.infoalarm"

    const-string v2, "CradleMain"

    .line 1574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1576
    packed-switch v1, :pswitch_data_0

    .line 1650
    :goto_0
    :pswitch_0
    return-void

    .line 1584
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    goto :goto_0

    .line 1588
    :pswitch_2
    const-string v0, "CradleMain"

    const-string v0, "toggle Speaker"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->toggleSpeakerMode()V

    goto :goto_0

    .line 1592
    :pswitch_3
    const-string v0, "CradleMain"

    const-string v0, "change day mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v0, v3, :cond_0

    .line 1594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 1599
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    goto :goto_0

    .line 1597
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    goto :goto_1

    .line 1602
    :pswitch_4
    const-string v1, "com.sec.android.app.cradle"

    const-string v2, "com.sec.android.app.cradle.CradleHomeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1606
    :pswitch_5
    const-string v1, "CradleMain"

    const-string v1, "button alarm~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1611
    :pswitch_6
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1625
    :pswitch_7
    const-string v1, "com.cooliris.media"

    const-string v2, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1629
    :pswitch_8
    const-string v1, "com.sec.android.widgetapp.infoalarm"

    const-string v1, "com.sec.android.widgetapp.infoalarm.activity.InfoAlarm"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1633
    :pswitch_9
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.list.activity.MpMainTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1637
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1638
    const-string v2, "cradle_weather_display"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1639
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1640
    const-string v1, "com.sec.android.widgetapp.infoalarm"

    const-string v1, "com.sec.android.widgetapp.infoalarm.activity.settings.SettingsWeatherSub"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1576
    :pswitch_data_0
    .packed-switch 0x7f0a0025
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 493
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v0, v1, :cond_2

    .line 509
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 511
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupViews()V

    .line 514
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupCalendarDays()V

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->checkVoiceSearch()V

    .line 516
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentClockView(I)V

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->eventsChanged()V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWeatherDataFromDB()V

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 525
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    return-void

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mRNG:Ljava/util/Random;

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, -0x3

    invoke-virtual {v11, v12}, Landroid/view/Window;->setFormat(I)V

    .line 224
    const-string v11, "uimode"

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    .line 225
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v11}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 226
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentOrientation:I

    .line 242
    invoke-static {p0}, Lcom/sec/android/app/cradle/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/cradle/Controller;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 244
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 245
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "cradle_day_mode"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 247
    const/4 v1, 0x1

    .line 249
    .local v1, defaultWeatherUnit:I
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "cradle_weather_unit"

    invoke-interface {v11, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 250
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 251
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v11, "cradle_weather_unit"

    invoke-interface {v3, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupViews()V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v9

    .line 259
    .local v9, time:J
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 260
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 261
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 263
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 264
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v11, "preferences_first_day_of_week"

    const-string v12, "1"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupCalendarDays()V

    .line 267
    new-instance v11, Lcom/sec/android/app/cradle/EventLoader;

    invoke-direct {v11, p0}, Lcom/sec/android/app/cradle/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    .line 269
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 270
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.google.android.voicesearch"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 274
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 280
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    if-eqz v11, :cond_2

    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, country:Ljava/lang/String;
    const-string v11, "en_US"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "en_AU"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "en_GB"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 283
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 292
    .end local v0           #country:Ljava/lang/String;
    :cond_2
    const-string v11, "cradle_internal_speaker"

    const/4 v12, 0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 294
    .local v6, isSpeaker:Z
    if-eqz v6, :cond_5

    .line 296
    const/4 v8, 0x0

    .line 297
    .local v8, state:I
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v12, 0x7f020043

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 306
    :goto_2
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    if-eqz v11, :cond_3

    .line 307
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 308
    .restart local v3       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v11, "cradle_connected"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v11, "state"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    const-string v11, "CradleMain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "send speaker broadcast state =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v11, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v11, "Updated.result"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v11, "Alarm.To.Update"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v11, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    sget-object v11, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v4}, Lcom/sec/android/app/cradle/CradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperChanged:Z

    .line 334
    return-void

    .line 225
    .end local v1           #defaultWeatherUnit:I
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v6           #isSpeaker:Z
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    .end local v8           #state:I
    .end local v9           #time:J
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 275
    .restart local v1       #defaultWeatherUnit:I
    .restart local v7       #prefs:Landroid/content/SharedPreferences;
    .restart local v9       #time:J
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 276
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    goto/16 :goto_1

    .line 301
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #isSpeaker:Z
    :cond_5
    const/4 v8, 0x1

    .line 302
    .restart local v8       #state:I
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v12, 0x7f020042

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "cradle_connected"

    .line 455
    sget-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->cancelLoadingWeather()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_connected"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 465
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 467
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 469
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    const-string v0, "CradleMain"

    const-string v1, "send speaker on broadcast, on Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    const-string v1, "cradle_connected"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 485
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 486
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "com.microsoft.mobileexperiences.bing"

    .line 604
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 606
    if-nez v0, :cond_0

    .line 608
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 611
    const-string v2, "com.microsoft.mobileexperiences.bing"

    const-string v2, "com.microsoft.mobileexperiences.bing.views.Splash"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v2, "com.microsoft.mobileexperiences.bing"

    const-string v2, "com.microsoft.mobileexperiences.bing"

    invoke-virtual {v1, v3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    const/4 v0, 0x1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 615
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->restoreScreen()V

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->savePreference()V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/EventLoader;->stopBackgroundThread()V

    .line 602
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 726
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 727
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v5, "cradle_wallpaper_changed"

    .line 730
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 732
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWakeLock(Z)V

    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWeatherDataFromDB()V

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, -0x32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 748
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperChanged:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 749
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->makeWallpaperBitmap()V

    .line 750
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperChanged:Z

    .line 752
    :cond_2
    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_day_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 758
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 761
    if-nez v0, :cond_4

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    .line 774
    const-string v0, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth] onresume refresh time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 779
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    .line 780
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/EventLoader;->startBackgroundThread()V

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->eventsChanged()V

    .line 784
    return-void

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_clock"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    .line 768
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentClockView(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 722
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 723
    return-void
.end method

.method public onTimeChanged()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v7, 0x0

    const/4 v12, 0x1

    const v11, 0x7f05003a

    const/high16 v10, 0x7f05

    .line 1385
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1391
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1392
    const v1, 0x7f0a0018

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1394
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1395
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1396
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 1397
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v3, 0xc

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1402
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1403
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1413
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    .line 1414
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 1415
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v12, :cond_4

    .line 1416
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1417
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1418
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1425
    :goto_3
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->setHour(I)V

    .line 1426
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->setMinute(I)V

    .line 1428
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v12, :cond_5

    .line 1429
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    const v3, 0x7f02006b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/AnalogClockView;->setBackgroundResource(I)V

    .line 1430
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1431
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1432
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1441
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    const-string v3, "AA"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/cradle/CradleMain;->setDataText(J)V

    .line 1447
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    iget v6, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1448
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    const-string v3, "E dd"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    const-string v3, "MMM, yyyy"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    const-string v3, "AA"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    const v2, 0x7f0a0016

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1455
    const-string v3, "MMMM"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    const-string v2, "dd"

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1458
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1459
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1460
    div-int/lit8 v8, v7, 0xa

    .line 1461
    rem-int/lit8 v7, v7, 0xa

    .line 1462
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v8, v9, v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1463
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v2, v2, v7

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1465
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v12, :cond_6

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1474
    :goto_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    const-string v0, "AA"

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1479
    if-nez v0, :cond_7

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectCityButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1399
    :cond_2
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    if-nez v2, :cond_1

    .line 1400
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    goto/16 :goto_1

    .line 1408
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1409
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1410
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1421
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1422
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1423
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1435
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    const v3, 0x7f02006c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/AnalogClockView;->setBackgroundResource(I)V

    .line 1436
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1437
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1438
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 1470
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1471
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 1484
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->refreshWeather()V

    goto/16 :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1956
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 1957
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->restoreScreen()V

    .line 1960
    :goto_0
    return-void

    .line 1959
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    goto :goto_0
.end method

.method public refreshWeather()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1232
    const-string v0, "CradleMain"

    const-string v1, "refreshWeather()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    .line 1235
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    if-ne v0, v2, :cond_1

    .line 1236
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->checkRefresh()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityWeather()V

    .line 1245
    :goto_0
    return-void

    .line 1240
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0

    .line 1243
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method reloadCurrentDayEvents()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 543
    .local v9, resources:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    move v8, v0

    .line 547
    .local v8, isLandscape:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->getSelectedColumn()I

    move-result v7

    .line 548
    .local v7, column:I
    if-nez v7, :cond_1

    .line 549
    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 562
    :goto_1
    return-void

    .end local v7           #column:I
    .end local v8           #isLandscape:Z
    :cond_0
    move v8, v1

    .line 543
    goto :goto_0

    .line 553
    .restart local v7       #column:I
    .restart local v8       #isLandscape:Z
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->getSelectedMillis()J

    move-result-wide v3

    .line 556
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$1;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/cradle/CradleMain$1;-><init>(Lcom/sec/android/app/cradle/CradleMain;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method setCurrentDayEvents(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 628
    return-void
.end method

.method public setDataText(J)V
    .locals 2
    .parameter

    .prologue
    .line 1248
    const-string v0, "MMMM d, EEEE"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.microsoft.mobileexperiences.bing"

    .line 1655
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1656
    :catch_0
    move-exception v0

    .line 1658
    const-string v0, "com.microsoft.mobileexperiences.bing"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.microsoft.mobileexperiences.bing"

    if-ne v0, v3, :cond_0

    .line 1660
    const-string v0, "CradleMain"

    const-string v1, "Bing Search Activity not found, Start default search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/cradle/CradleMain;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
