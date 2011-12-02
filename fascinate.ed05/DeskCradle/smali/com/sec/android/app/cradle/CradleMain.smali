.class public Lcom/sec/android/app/cradle/CradleMain;
.super Landroid/app/Activity;
.source "CradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/sec/android/app/cradle/Navigator;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleMain$CallListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIALOG_FARE:I = 0x44e

.field private static final SCREEN_SAVER_REQUEST_CODE:I = 0x3e9

.field private static final SCREEN_SAVER_START_DELAY:I = 0x927c0

.field public static STATE_CALENDAR:I = 0x0

.field public static STATE_CLOCK_ANALOG:I = 0x0

.field public static STATE_CLOCK_DIGITAL_1:I = 0x0

.field public static STATE_CLOCK_DIGITAL_2:I = 0x0

.field public static STATE_CLOCK_DIGITAL_3:I = 0x0

.field public static STATE_CLOCK_DIGITAL_4:I = 0x0

.field public static STATE_NO_CLOCK_CALENDAR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CradleMain"

.field private static mIsNowLoadingWeather:Z

.field private static mIsShowingScreenSaver:Z


# instance fields
.field brightness_Day:I

.field private cityLocation:Ljava/lang/String;

.field public dayMode:Z

.field private hour:I

.field private listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

.field private mAddCity:Landroid/widget/Button;

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

.field mBodyContainer:Landroid/widget/FrameLayout;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarView:Landroid/view/View;

.field public mCityLocationName:Ljava/lang/String;

.field mCityName:Landroid/widget/TextView;

.field private mController:Lcom/sec/android/app/cradle/Controller;

.field private mCurrentCityIdx:I

.field mCurrentClockView:I

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

.field mHandler:Landroid/os/Handler;

.field private mHasVoiceSearch:Z

.field private mHourView1:Landroid/view/View;

.field private mHourView2:Landroid/view/View;

.field private mIsSetWeatherRefresh:Z

.field private mIsWeatherClockView:Z

.field public mLaunchedFromDock:Z

.field private mMinView1:Landroid/view/View;

.field private mMinView2:Landroid/view/View;

.field private mMonthClockView:Landroid/widget/TextView;

.field private mMonthNumbers:[I

.field private mMonthView:Lcom/sec/android/app/cradle/MonthView;

.field private mMusicButton:Landroid/view/View;

.field private mOldBrightness:I

.field private mOldSystemBrightness:I

.field private mOldSystemBrightnessMode:I

.field private mPluggedIn:Z

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshTime:J

.field private mRefreshTimeInterval:I

.field private mSelectCity:Ljava/lang/String;

.field public mSelectedCity:Ljava/lang/String;

.field private mSettingButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mSpeakerMode:Z

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTemNumbers:[I

.field mTemperature0:Landroid/widget/ImageView;

.field mTemperature1:Landroid/widget/ImageView;

.field mTemperature2:Landroid/widget/ImageView;

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon:Landroid/view/View;

.field private mVoiceCommandButton:Landroid/view/View;

.field private mWallPaper:Landroid/net/Uri;

.field mWallpaperType:I

.field private mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

.field mWeatherImage:Landroid/widget/ImageView;

.field private mWeatherView:Landroid/view/View;

.field private min:I

.field private onedayUrl:Ljava/lang/String;

.field private sec:I

.field tempSymbol:Landroid/widget/ImageView;

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

    .line 100
    sput v1, Lcom/sec/android/app/cradle/CradleMain;->STATE_NO_CLOCK_CALENDAR:I

    .line 101
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_1:I

    .line 102
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_2:I

    .line 103
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_3:I

    .line 104
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_4:I

    .line 105
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_ANALOG:I

    .line 106
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CALENDAR:I

    .line 139
    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 174
    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 98
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 141
    iput v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    .line 142
    iput v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightnessMode:I

    .line 148
    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 150
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->todayUrl:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->onedayUrl:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->twodayUrl:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->thrddayUrl:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->cityLocation:Ljava/lang/String;

    .line 182
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    .line 184
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 185
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 1384
    new-instance v0, Lcom/sec/android/app/cradle/CradleMain$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleMain$3;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1658
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    .line 1671
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    .line 1684
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    .line 1698
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    return-void

    .line 1658
    :array_0
    .array-data 0x4
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1671
    :array_1
    .array-data 0x4
        0x56t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 1684
    :array_2
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 1698
    :array_3
    .array-data 0x4
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/cradle/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleMain;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/cradle/CradleMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput-boolean p0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/cradle/CradleMain;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$814(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/cradle/CradleMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    return v0
.end method

.method private changeCELSIUStoFAHRENHEIT(I)I
    .locals 6
    .parameter "cel"

    .prologue
    const/high16 v5, 0x3f80

    .line 1138
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

    .line 1140
    .local v0, Fahrenheit:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1143
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

    .line 1147
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

    .line 1148
    .local v0, celsius:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1151
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1
.end method

.method private checkRefresh()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "CradleMain"

    .line 1347
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1348
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1349
    .local v0, time:J
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

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
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

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-wide v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1352
    const/4 v2, 0x0

    .line 1354
    :goto_0
    return v2

    :cond_0
    move v2, v5

    goto :goto_0
.end method

.method private checkVoiceSearch()V
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayWeatherItemData()V
    .locals 20

    .prologue
    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 1134
    :goto_0
    return-void

    .line 1053
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1059
    :cond_1
    const-string v17, "CradleMain"

    const-string v18, "displayWeatherItemData"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1066
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "cradle_saved_weather_icon"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1067
    .local v14, weathericon:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "cradle_saved_weather_temperature"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1068
    .local v15, weathertemp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "cradle_saved_weather_unit"

    const-string v19, "C"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1071
    .local v16, weatherunit:Ljava/lang/String;
    const v17, 0x7f0a0025

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1072
    .local v12, weatherImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "cradle_weather_unit"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1075
    .local v13, weatherUnit:I
    const v17, 0x7f0a002a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1078
    .local v8, temp_symbol:Landroid/widget/ImageView;
    const v17, 0x7f0a0027

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1079
    .local v9, temperature0:Landroid/widget/ImageView;
    const v17, 0x7f0a0028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1080
    .local v10, temperature1:Landroid/widget/ImageView;
    const v17, 0x7f0a0029

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1081
    .local v11, temperature2:Landroid/widget/ImageView;
    move v7, v15

    .line 1083
    .local v7, tem:I
    const/16 v17, 0x1

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1084
    const v17, 0x7f02011f

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1085
    const-string v17, "F"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1086
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v7

    .line 1097
    :cond_3
    :goto_1
    const-string v17, "CradleMain"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Temperature : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v6, 0x0

    .line 1099
    .local v6, isTemNegative:Z
    if-gez v7, :cond_4

    const/16 v17, -0x63

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 1100
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1101
    const/4 v6, 0x1

    .line 1104
    :cond_4
    div-int/lit8 v3, v7, 0x64

    .line 1105
    .local v3, i1:I
    rem-int/lit8 v17, v7, 0x64

    div-int/lit8 v4, v17, 0xa

    .line 1106
    .local v4, i2:I
    rem-int/lit8 v5, v7, 0xa

    .line 1110
    .local v5, i3:I
    if-gtz v3, :cond_5

    const/16 v17, 0x1

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1111
    :cond_5
    const/16 v17, 0x0

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    :goto_2
    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    if-ltz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    if-ltz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 1120
    const/16 v17, 0x1

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1121
    const v17, 0x7f020120

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1126
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    aget v17, v17, v5

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1090
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #i3:I
    .end local v6           #isTemNegative:Z
    :cond_6
    const v17, 0x7f02011e

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1091
    const-string v17, "F"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1092
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v7

    goto/16 :goto_1

    .line 1113
    .restart local v3       #i1:I
    .restart local v4       #i2:I
    .restart local v5       #i3:I
    .restart local v6       #isTemNegative:Z
    :cond_7
    const/16 v17, 0x8

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1123
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object/from16 v17, v0

    aget v17, v17, v3

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 1129
    :cond_9
    const/16 v17, 0x0

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    const v17, 0x7f020120

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1131
    const v17, 0x7f020120

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1132
    const v17, 0x7f020120

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 18
    .parameter "weather"

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    move-object v15, v0

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 1044
    :goto_0
    return-void

    .line 971
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    move-object v15, v0

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 974
    const-string v15, "CradleMain"

    const-string v16, "displayWeatherItemData refresh"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 978
    .local v3, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 981
    const v15, 0x7f0a0025

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 982
    .local v13, weatherImage:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    move-object v15, v0

    const-string v16, "cradle_weather_unit"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 985
    .local v14, weatherUnit:I
    const v15, 0x7f0a002a

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 988
    .local v9, temp_symbol:Landroid/widget/ImageView;
    const v15, 0x7f0a0027

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 989
    .local v10, temperature0:Landroid/widget/ImageView;
    const v15, 0x7f0a0028

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 990
    .local v11, temperature1:Landroid/widget/ImageView;
    const v15, 0x7f0a0029

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 991
    .local v12, temperature2:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    move v8, v0

    .line 992
    .local v8, tem:I
    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 993
    const v15, 0x7f02011f

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    move-object v15, v0

    const-string v16, "F"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 995
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v8

    .line 1007
    :cond_1
    :goto_1
    const-string v15, "CradleMain"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Temperature : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v7, 0x0

    .line 1009
    .local v7, isTemNegative:Z
    if-gez v8, :cond_2

    const/16 v15, -0x63

    if-lt v8, v15, :cond_2

    .line 1010
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1011
    const/4 v7, 0x1

    .line 1014
    :cond_2
    div-int/lit8 v4, v8, 0x64

    .line 1015
    .local v4, i1:I
    rem-int/lit8 v15, v8, 0x64

    div-int/lit8 v5, v15, 0xa

    .line 1016
    .local v5, i2:I
    rem-int/lit8 v6, v8, 0xa

    .line 1020
    .local v6, i3:I
    if-gtz v4, :cond_3

    const/4 v15, 0x1

    if-ne v7, v15, :cond_5

    .line 1021
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    :goto_2
    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    array-length v15, v15

    if-ge v4, v15, :cond_7

    if-ltz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    array-length v15, v15

    if-ge v5, v15, :cond_7

    if-ltz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    array-length v15, v15

    if-ge v6, v15, :cond_7

    .line 1030
    const/4 v15, 0x1

    if-ne v7, v15, :cond_6

    .line 1031
    const v15, 0x7f020120

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1036
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    aget v15, v15, v5

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    aget v15, v15, v6

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1000
    .end local v4           #i1:I
    .end local v5           #i2:I
    .end local v6           #i3:I
    .end local v7           #isTemNegative:Z
    :cond_4
    const v15, 0x7f02011e

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    move-object v15, v0

    const-string v16, "F"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 1002
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v8

    goto/16 :goto_1

    .line 1023
    .restart local v4       #i1:I
    .restart local v5       #i2:I
    .restart local v6       #i3:I
    .restart local v7       #isTemNegative:Z
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1033
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    move-object v15, v0

    aget v15, v15, v4

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 1039
    :cond_7
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    const v15, 0x7f020120

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1041
    const v15, 0x7f020120

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1042
    const v15, 0x7f020120

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private getDefaultCityWeather()V
    .locals 4

    .prologue
    .line 1825
    const-string v2, "show_fare_popup"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/cradle/CradleMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1826
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "do_not_show_fare_weather_popup"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1832
    .local v0, bShowFarePopup:Z
    const-string v2, "CradleMain"

    const-string v3, "[jangth] getDefaultCityWeather start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    sget-boolean v2, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    if-nez v2, :cond_0

    .line 1834
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V

    .line 1837
    :cond_0
    return-void
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F
    .locals 5
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 1949
    const/4 v3, 0x0

    .line 1950
    .local v3, sum:F
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 1951
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [F

    .line 1953
    .local v2, strWidths:[F
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1955
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1956
    aget v4, v2, v0

    add-float/2addr v3, v4

    .line 1955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1958
    :cond_0
    return v3
.end method

.method private handleBatteryUpdate(II)V
    .locals 2
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1523
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 1524
    .local v0, pluggedIn:Z
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_1

    .line 1525
    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWakeLock(Z)V

    .line 1527
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_2

    .line 1529
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    .line 1532
    :cond_2
    return-void

    .line 1523
    .end local v0           #pluggedIn:Z
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private registerTelephonyListener()V
    .locals 3

    .prologue
    .line 423
    const-string v1, "CradleMain"

    const-string v2, "registerTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 425
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 426
    return-void
.end method

.method private rescheduleScreenServer()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->stopScreenSaver()V

    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    .line 667
    return-void
.end method

.method private savePreference()V
    .locals 3

    .prologue
    .line 626
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 627
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_day_mode"

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void
.end method

.method private scheduleScreenSaver()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    return-void
.end method

.method private setCurrentClockView(I)V
    .locals 3
    .parameter "clockView"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 927
    packed-switch p1, :pswitch_data_0

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 952
    :goto_0
    sput-boolean v2, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 953
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 954
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    .line 957
    :cond_0
    return-void

    .line 930
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 942
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 927
    nop

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
    .line 1633
    div-int/lit8 v0, p1, 0xa

    .line 1634
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1635
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1636
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1637
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1643
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1641
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
    .line 1646
    div-int/lit8 v0, p1, 0xa

    .line 1647
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1648
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1649
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1650
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1656
    :goto_0
    return-void

    .line 1653
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1654
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
    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 193
    .local v0, win:Landroid/view/Window;
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 195
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x68

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    if-eqz p1, :cond_1

    .line 200
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 203
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 202
    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method private setWeatherImg(Landroid/widget/ImageView;I)V
    .locals 5
    .parameter "dayWeatherImageView"
    .parameter "weatherIconNum"

    .prologue
    const v4, 0x7f020136

    const v3, 0x7f020138

    const v2, 0x7f020137

    const v1, 0x7f020133

    const v0, 0x7f020131

    .line 1156
    packed-switch p2, :pswitch_data_0

    .line 1275
    :goto_0
    :pswitch_0
    return-void

    .line 1158
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1161
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1164
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1167
    :pswitch_4
    const v0, 0x7f020132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1170
    :pswitch_5
    const v0, 0x7f020132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1173
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1176
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1179
    :pswitch_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1182
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1185
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1188
    :pswitch_b
    const v0, 0x7f020134

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1191
    :pswitch_c
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1194
    :pswitch_d
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1197
    :pswitch_e
    const v0, 0x7f020135

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1200
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1203
    :pswitch_10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1206
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1209
    :pswitch_12
    const v0, 0x7f020139

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1212
    :pswitch_13
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1215
    :pswitch_14
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1218
    :pswitch_15
    const v0, 0x7f02013a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1221
    :pswitch_16
    const v0, 0x7f02013a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1224
    :pswitch_17
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1227
    :pswitch_18
    const v0, 0x7f02013a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1230
    :pswitch_19
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1233
    :pswitch_1a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1236
    :pswitch_1b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1239
    :pswitch_1c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1242
    :pswitch_1d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1245
    :pswitch_1e
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1248
    :pswitch_1f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1251
    :pswitch_20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1254
    :pswitch_21
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1257
    :pswitch_22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1260
    :pswitch_23
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1263
    :pswitch_24
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1266
    :pswitch_25
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1269
    :pswitch_26
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1272
    :pswitch_27
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1156
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
    .locals 4
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 1962
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleMain;->getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F

    move-result v0

    .line 1963
    .local v0, StringWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1965
    .local v1, TextViewWidth:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 1966
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1969
    :goto_0
    return-void

    .line 1968
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method private setupCalendarDays()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x14

    .line 390
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    sub-int/2addr v2, v3

    sub-int v1, v2, v3

    .line 392
    .local v1, diff:I
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, dayString:Ljava/lang/String;
    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 398
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    add-int/lit8 v2, v1, 0x3

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 402
    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    add-int/lit8 v2, v1, 0x4

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 406
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    add-int/lit8 v2, v1, 0x5

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 410
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    add-int/lit8 v2, v1, 0x6

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    add-int/lit8 v2, v1, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 418
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    const v1, 0x7f0a0010

    .line 311
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    .line 312
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    .line 313
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    .line 314
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    .line 315
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    .line 316
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    .line 319
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    .line 332
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/AnalogClockView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    .line 333
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherImage:Landroid/widget/ImageView;

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityName:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature0:Landroid/widget/ImageView;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature1:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature2:Landroid/widget/ImageView;

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->tempSymbol:Landroid/widget/ImageView;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->tempSymbol:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    .line 365
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    .line 366
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    .line 368
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthClockView:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    .line 371
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 377
    :cond_0
    return-void
.end method

.method private startGetDefaultCityWeather()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1840
    const-string v0, "CradleMain"

    const-string v2, "[jangth] startGetDefaultCityWeather"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/WeatherClockData;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    .line 1842
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1844
    .local v1, cityName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1845
    new-instance v3, Lcom/sec/android/app/cradle/CradleMain$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/cradle/CradleMain$4;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1884
    .local v3, onData:Ljava/lang/Runnable;
    new-instance v4, Lcom/sec/android/app/cradle/CradleMain$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/cradle/CradleMain$5;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1892
    .local v4, onFail:Ljava/lang/Runnable;
    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleMain$6;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1899
    .local v5, onCancel:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/WeatherClockData;->getWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 1902
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1914
    .end local v3           #onData:Ljava/lang/Runnable;
    .end local v4           #onFail:Ljava/lang/Runnable;
    .end local v5           #onCancel:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->getCitycount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->checkNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1907
    sput-boolean v6, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1912
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method private stopScreenSaver()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method private unregisterTelephonyListener()V
    .locals 3

    .prologue
    .line 429
    const-string v1, "CradleMain"

    const-string v2, "unregisterTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 431
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 432
    return-void
.end method

.method private updateDayNightMode()V
    .locals 6

    .prologue
    const v4, 0x7f0200b5

    const v3, 0x7f0200a5

    const/4 v5, 0x1

    const-string v2, "power"

    .line 708
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v5, :cond_3

    .line 709
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v2, :pswitch_data_0

    .line 729
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 733
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v2, :cond_1

    .line 736
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    iget v3, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 780
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    iget-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/MonthView;->setDayMode(Z)V

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 782
    return-void

    .line 711
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 714
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 715
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 722
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 723
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 724
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 738
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 739
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 746
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_3
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v2, :pswitch_data_1

    .line 765
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 767
    :try_start_1
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 768
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v2, :cond_5

    .line 769
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v3, 0x1e

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    :cond_5
    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    goto :goto_1

    .line 748
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 751
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 752
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 755
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 759
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 760
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 761
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 772
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 773
    .restart local v1       #ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 746
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateSpeaker()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    const-string v8, "audio"

    const-string v7, "CradleMain"

    .line 458
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    if-eqz v3, :cond_2

    .line 460
    iput-boolean v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 461
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f02003d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 463
    .local v1, mAudio:Landroid/media/AudioManager;
    const-string v3, "CradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External Speaker isExtraSpeakerDockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 466
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v3, "state"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v2, speakerDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleMain$1;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 491
    .end local v2           #speakerDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 480
    .end local v1           #mAudio:Landroid/media/AudioManager;
    :cond_2
    iput-boolean v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 481
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f020044

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 483
    .restart local v1       #mAudio:Landroid/media/AudioManager;
    const-string v3, "CradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Speaker isExtraSpeakerDockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v3, "state"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 678
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method eventsChanged()V
    .locals 2

    .prologue
    .line 960
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    .line 961
    .local v0, view:Lcom/sec/android/app/cradle/MonthView;
    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->reloadEvents2()V

    .line 962
    return-void
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCityIndex()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "cradle_weather_city_location"

    const-string v7, "cradle_weather_city"

    .line 1286
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1287
    :cond_0
    iput-object v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1288
    iput-object v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    .line 1289
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1290
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_weather_city"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1291
    const-string v3, "cradle_weather_city_location"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1293
    const-string v3, "cradle_weather_display"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1294
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1343
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1297
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1298
    const v3, 0x7f0a0026

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1299
    .local v0, cityName:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city_location"

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    .line 1319
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/cradle/Controller;->isCityAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1322
    iput v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1324
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 1325
    .local v1, data:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1326
    .restart local v2       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_weather_city"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1327
    const-string v3, "cradle_weather_city_location"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1328
    const-string v3, "cradle_weather_city_changed"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1329
    const-string v3, "cradle_weather_refresh_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1332
    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1335
    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1336
    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    goto :goto_0

    .line 1339
    .end local v1           #data:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 1809
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1928
    const/4 v4, 0x0

    .line 1930
    .local v4, wallPaperContext:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.sec.android.app.twwallpaperchooser"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/cradle/CradleMain;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1937
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_wallpaper_resource_id"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1939
    .local v2, resId:I
    if-nez v2, :cond_0

    move-object v5, v8

    .line 1945
    .end local v2           #resId:I
    :goto_0
    return-object v5

    .line 1931
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1932
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1933
    const-string v5, "CradleMain"

    const-string v6, "Fail to Get twwallpaperContext"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1934
    goto :goto_0

    .line 1942
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #resId:I
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1943
    .local v3, twWallPaperResources:Landroid/content/res/Resources;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    .line 1945
    goto :goto_0
.end method

.method public getWeatherDataFromDB()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    .line 1279
    return-void
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 0
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 1815
    return-void
.end method

.method public goToToday()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    .line 555
    new-instance v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/cradle/MonthView;-><init>(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthView:Lcom/sec/android/app/cradle/MonthView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 579
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 580
    const-string v0, "old_brightness"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    .line 581
    const-string v0, "old_brightness_mode"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightnessMode:I

    .line 583
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 584
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v5, "com.sec.android.app.cradle"

    const-string v4, "CradleMain"

    .line 1714
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 1715
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1716
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1717
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1791
    :goto_0
    :pswitch_0
    return-void

    .line 1725
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    goto :goto_0

    .line 1728
    :pswitch_2
    const-string v2, "CradleMain"

    const-string v2, "change day mode"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v3, :cond_0

    .line 1730
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 1735
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    goto :goto_0

    .line 1733
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    goto :goto_1

    .line 1738
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateSpeaker()V

    goto :goto_0

    .line 1748
    :pswitch_4
    const-string v2, "com.sec.android.app.cradle"

    const-string v2, "com.sec.android.app.cradle.CradleWeatherSettings"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1749
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1752
    :pswitch_5
    const-string v2, "com.sec.android.app.cradle"

    const-string v2, "com.sec.android.app.cradle.CradleHomeSettings"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1757
    :pswitch_6
    const-string v2, "CradleMain"

    const-string v2, "button alarm~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v2, "com.sec.android.app.clockpackage"

    const-string v3, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1762
    :pswitch_7
    const-string v2, "com.google.android.voicesearch"

    const-string v3, "com.google.android.voicesearch.RecognitionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1773
    :pswitch_8
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1774
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1777
    :pswitch_9
    const-string v2, "com.sec.android.widgetapp.infoalarm"

    const-string v3, "com.sec.android.widgetapp.infoalarm.activity.InfoAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1781
    :pswitch_a
    const-string v2, "com.android.music"

    const-string v3, "com.android.music.list.activity.MpMainTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0023
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, -0x3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setFormat(I)V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x40

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 215
    .local v3, i:Landroid/content/Intent;
    const-string v9, "kill_task"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 216
    .local v5, kill:Z
    if-eqz v5, :cond_0

    .line 217
    const-string v9, "CradleMain"

    const-string v10, "kill task mode"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    .line 220
    :cond_0
    const/high16 v9, 0x7f03

    invoke-virtual {p0, v9}, Lcom/sec/android/app/cradle/CradleMain;->setContentView(I)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentOrientation:I

    .line 223
    invoke-static {p0}, Lcom/sec/android/app/cradle/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/cradle/Controller;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 225
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 226
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_day_mode"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 227
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    .line 228
    new-instance v9, Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/sec/android/app/cradle/CradleMain$CallListener;-><init>(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/CradleMain$1;)V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupViews()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v7

    .line 233
    .local v7, time:J
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 234
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v9, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 235
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 237
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 238
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v9, "preferences_first_day_of_week"

    const-string v10, "1"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupCalendarDays()V

    .line 241
    new-instance v9, Lcom/sec/android/app/cradle/EventLoader;

    invoke-direct {v9, p0}, Lcom/sec/android/app/cradle/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    .line 243
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 244
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.google.android.voicesearch"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 248
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 254
    iget-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    if-eqz v9, :cond_2

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, country:Ljava/lang/String;
    const-string v9, "en_US"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "en_AU"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "en_GB"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 261
    .end local v0           #country:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.intent.category.DESK_DOCK"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 289
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleMain;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 292
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v9, "Updated.result"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v9, "Alarm.To.Update"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/sec/android/app/cradle/CradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    const/16 v9, 0xe1

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    .line 308
    return-void

    .line 249
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 250
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 517
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 681
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 683
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 685
    const/16 v4, 0x54

    if-ne p1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 687
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.google.android.googlequicksearchbox"

    const-string v5, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    const/4 v1, 0x1

    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v1

    .line 697
    .end local v1           #handled:Z
    .local v2, handled:Z
    :goto_0
    return v2

    .line 691
    .end local v2           #handled:Z
    .restart local v1       #handled:Z
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    move v2, v1

    .line 692
    .end local v1           #handled:Z
    .restart local v2       #handled:Z
    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 632
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 642
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->savePreference()V

    .line 643
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->unregisterTelephonyListener()V

    .line 648
    sget-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    if-eqz v1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 653
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 657
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 801
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 808
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->registerTelephonyListener()V

    .line 810
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_weather_display"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    .line 812
    iget-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWeatherDataFromDB()V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 817
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_desk_connected"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 818
    .local v3, isDockConnected:Z
    const-string v9, "CradleMain"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume isDockConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 821
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 823
    .local v4, mAudio:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v9

    if-nez v9, :cond_4

    .line 824
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 825
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v10, 0x7f020044

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 830
    :goto_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 831
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-eqz v9, :cond_1

    .line 832
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 840
    .end local v4           #mAudio:Landroid/media/AudioManager;
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, text:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf

    if-le v9, v10, :cond_2

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/16 v9, -0x32

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 850
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_wallpaper_type"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    .line 851
    iget v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v9, :pswitch_data_0

    .line 896
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_day_mode"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 897
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    .line 899
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_time_display"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 900
    .local v5, mIsDisplayClockView:Z
    if-nez v5, :cond_7

    .line 901
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mCalendarView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 910
    :goto_4
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_weather_refresh_time_index"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    .line 912
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_weather_refresh_on"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    .line 913
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_weather_refresh_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    .line 914
    const-string v9, "CradleMain"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[jangth] onresume refresh time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 916
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 919
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    .line 920
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 922
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/EventLoader;->startBackgroundThread()V

    .line 924
    return-void

    .line 827
    .end local v5           #mIsDisplayClockView:Z
    .end local v7           #text:Ljava/lang/String;
    .restart local v4       #mAudio:Landroid/media/AudioManager;
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 828
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v10, 0x7f02003d

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 836
    .end local v4           #mAudio:Landroid/media/AudioManager;
    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 841
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 842
    .local v0, e:Ljava/lang/Exception;
    iget v9, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    goto/16 :goto_2

    .line 853
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v7       #text:Ljava/lang/String;
    :pswitch_0
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 856
    :pswitch_1
    const-string v9, "wallpaper"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/cradle/CradleMain;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 858
    .local v2, file:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 860
    .local v6, s:Ljava/io/InputStream;
    :try_start_2
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    if-eqz v6, :cond_3

    .line 864
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 865
    :catch_1
    move-exception v0

    .line 866
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 869
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #s:Ljava/io/InputStream;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 870
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v9, "CradleMain"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 862
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v6       #s:Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_6

    .line 864
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 867
    :cond_6
    :goto_5
    :try_start_6
    throw v9

    .line 865
    :catch_3
    move-exception v0

    .line 866
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 892
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v6           #s:Ljava/io/InputStream;
    :pswitch_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 906
    .restart local v5       #mIsDisplayClockView:Z
    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "cradle_current_clock"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    .line 907
    iget v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentClockView(I)V

    goto/16 :goto_4

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTimeChanged()V
    .locals 15

    .prologue
    .line 1535
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 1536
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1537
    .local v4, time:J
    const v11, 0x7f0a0015

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1538
    .local v9, title_month_clock:Landroid/widget/TextView;
    const v11, 0x7f0a0016

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1540
    .local v10, title_month_clock_ampm:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->hour:I

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1541
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1542
    iget v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v12, 0xc

    if-le v11, v12, :cond_1

    .line 1543
    iget v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v12, 0xc

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1548
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1549
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1559
    :goto_1
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->minute:I

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    .line 1560
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->second:I

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 1561
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1562
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v12, 0x7f020060

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1563
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1564
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1571
    :goto_2
    iget v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-direct {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->setHour(I)V

    .line 1572
    iget v11, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-direct {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->setMinute(I)V

    .line 1574
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 1575
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    const v12, 0x7f020061

    invoke-virtual {v11, v12}, Lcom/sec/android/app/cradle/AnalogClockView;->setBackgroundResource(I)V

    .line 1576
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1577
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1578
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1587
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    const-string v12, "AA"

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    const-string v12, "EEEE MMMM dd, yyyy"

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    const-string v11, "%02d:%02d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, stringTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    const-string v12, "E"

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    const-string v12, "MMM dd"

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    const-string v12, "AA"

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    const v11, 0x7f0a0014

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1600
    .local v8, title_month:Landroid/widget/TextView;
    const-string v11, "MMMM"

    invoke-static {v11, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    const-string v11, "dd"

    invoke-static {v11, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1603
    .local v0, curday:I
    const v11, 0x7f0a0012

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1604
    .local v6, title_day_image01:Landroid/widget/ImageView;
    const v11, 0x7f0a0013

    invoke-virtual {p0, v11}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1605
    .local v7, title_day_image02:Landroid/widget/ImageView;
    div-int/lit8 v1, v0, 0xa

    .line 1606
    .local v1, i1:I
    rem-int/lit8 v2, v0, 0xa

    .line 1607
    .local v2, i2:I
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v11, v11, v1

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1608
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v11, v11, v2

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1610
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 1611
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f05

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1612
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f05

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1619
    :goto_4
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1620
    const-string v11, "AA"

    invoke-static {v11, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "cradle_weather_display"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    .line 1623
    iget-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    if-nez v11, :cond_6

    .line 1624
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1625
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 1630
    :goto_5
    return-void

    .line 1545
    .end local v0           #curday:I
    .end local v1           #i1:I
    .end local v2           #i2:I
    .end local v3           #stringTime:Ljava/lang/String;
    .end local v6           #title_day_image01:Landroid/widget/ImageView;
    .end local v7           #title_day_image02:Landroid/widget/ImageView;
    .end local v8           #title_month:Landroid/widget/TextView;
    :cond_1
    iget v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    if-nez v11, :cond_0

    .line 1546
    const/16 v11, 0xc

    iput v11, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    goto/16 :goto_0

    .line 1554
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1555
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1567
    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v12, 0x7f02006d

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1568
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1569
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1581
    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClock:Lcom/sec/android/app/cradle/AnalogClockView;

    const v12, 0x7f020062

    invoke-virtual {v11, v12}, Lcom/sec/android/app/cradle/AnalogClockView;->setBackgroundResource(I)V

    .line 1582
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1583
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1584
    iget-object v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1615
    .restart local v0       #curday:I
    .restart local v1       #i1:I
    .restart local v2       #i2:I
    .restart local v3       #stringTime:Ljava/lang/String;
    .restart local v6       #title_day_image01:Landroid/widget/ImageView;
    .restart local v7       #title_day_image02:Landroid/widget/ImageView;
    .restart local v8       #title_month:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1616
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 1628
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->refreshWeather()V

    goto/16 :goto_5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 673
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->stopScreenSaver()V

    .line 597
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 598
    return-void

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    goto :goto_0
.end method

.method public refreshWeather()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "cradle_weather_city_changed"

    .line 1359
    const-string v2, "CradleMain"

    const-string v3, "refreshWeather()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_weather_city_changed"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1361
    .local v1, isCityChanged:Z
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    if-ne v2, v5, :cond_1

    .line 1362
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->checkRefresh()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1363
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1364
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_weather_city_changed"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1366
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityWeather()V

    .line 1382
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0

    .line 1373
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1374
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1375
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_weather_city_changed"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1377
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityWeather()V

    goto :goto_0

    .line 1380
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method reloadCurrentDayEvents()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 603
    .local v9, resources:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    move v8, v0

    .line 607
    .local v8, isLandscape:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->getSelectedColumn()I

    move-result v7

    .line 608
    .local v7, column:I
    if-nez v7, :cond_1

    .line 609
    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 622
    :goto_1
    return-void

    .end local v7           #column:I
    .end local v8           #isLandscape:Z
    :cond_0
    move v8, v1

    .line 603
    goto :goto_0

    .line 613
    .restart local v7       #column:I
    .restart local v8       #isLandscape:Z
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->getSelectedMillis()J

    move-result-wide v3

    .line 616
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$2;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/cradle/CradleMain$2;-><init>(Lcom/sec/android/app/cradle/CradleMain;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 565
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    const-string v1, "daymode"

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    const-string v1, "brightness_day"

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    const-string v1, "old_brightness"

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 574
    return-void
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
    .line 704
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 705
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1796
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v1, 0x7f080008

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
