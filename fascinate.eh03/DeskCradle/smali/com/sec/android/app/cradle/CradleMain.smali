.class public Lcom/sec/android/app/cradle/CradleMain;
.super Landroid/app/Activity;
.source "CradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleMain$CallListener;
    }
.end annotation


# static fields
.field public static STATE_CALENDAR:I

.field public static STATE_CLOCK_ANALOG:I

.field public static STATE_CLOCK_DIGITAL_1:I

.field public static STATE_CLOCK_DIGITAL_2:I

.field public static STATE_CLOCK_DIGITAL_3:I

.field public static STATE_CLOCK_DIGITAL_4:I

.field public static STATE_NO_CLOCK_CALENDAR:I

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

.field private mBackground:Landroid/widget/ImageView;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBigNumbers:[I

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

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

.field private mLaunchedFromRecent:Z

.field private mMinView1:Landroid/view/View;

.field private mMinView2:Landroid/view/View;

.field private mMonthClockView:Landroid/widget/TextView;

.field private mMonthNumbers:[I

.field private mMusicButton:Landroid/view/View;

.field private mOldBrightness:I

.field private mOldSystemBrightness:I

.field private mOldSystemBrightnessMode:I

.field private mPluggedIn:Z

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshTime:J

.field private mRefreshTimeInterval:I

.field public mSelectedCity:Ljava/lang/String;

.field private mSettingButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mSpeakerMode:Z

.field private mStartDay:I

.field private mTemNumbers:[I

.field mTemperature0:Landroid/widget/ImageView;

.field mTemperature1:Landroid/widget/ImageView;

.field mTemperature2:Landroid/widget/ImageView;

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon:Landroid/view/View;

.field private mVoiceCommandButton:Landroid/view/View;

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

    .line 102
    sput v1, Lcom/sec/android/app/cradle/CradleMain;->STATE_NO_CLOCK_CALENDAR:I

    .line 103
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_1:I

    .line 104
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_2:I

    .line 105
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_3:I

    .line 106
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_DIGITAL_4:I

    .line 107
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CLOCK_ANALOG:I

    .line 108
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/cradle/CradleMain;->STATE_CALENDAR:I

    .line 141
    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 176
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

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 82
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    .line 83
    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 99
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 100
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 143
    iput v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    .line 144
    iput v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightnessMode:I

    .line 150
    iput v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 152
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->todayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->onedayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->twodayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->thrddayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->cityLocation:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    .line 184
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 187
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromRecent:Z

    .line 188
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPluggedIn:Z

    .line 189
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 1436
    new-instance v0, Lcom/sec/android/app/cradle/CradleMain$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleMain$2;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1714
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    .line 1727
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    .line 1740
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    .line 1754
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    return-void

    .line 1714
    :array_0
    .array-data 0x4
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1727
    :array_1
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1740
    :array_2
    .array-data 0x4
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1754
    :array_3
    .array-data 0x4
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/cradle/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleMain;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/cradle/CradleMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-boolean p0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/cradle/CradleMain;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$814(Lcom/sec/android/app/cradle/CradleMain;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/cradle/CradleMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    return v0
.end method

.method private changeCELSIUStoFAHRENHEIT(I)I
    .locals 6
    .parameter "cel"

    .prologue
    const/high16 v5, 0x3f80

    .line 1186
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

    .line 1188
    .local v0, Fahrenheit:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1191
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

    .line 1195
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

    .line 1196
    .local v0, celsius:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    rem-float/2addr v1, v5

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1199
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

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1399
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

    .line 1400
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

    .line 1401
    iget-wide v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1402
    const/4 v0, 0x0

    .line 1404
    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method private displayWeatherItemData()V
    .locals 12

    .prologue
    const v10, 0x7f0200a4

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "CradleMain"

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1182
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1107
    :cond_1
    const-string v0, "CradleMain"

    const-string v0, "displayWeatherItemData"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iput v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_icon"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_saved_weather_temperature"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_saved_weather_unit"

    const-string v3, "C"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1119
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1120
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1123
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1126
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1127
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1128
    const v3, 0x7f0a0029

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1131
    if-ne v6, v9, :cond_4

    .line 1132
    const v6, 0x7f0200a3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    const-string v0, "F"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1134
    invoke-direct {p0, v4}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v0

    .line 1145
    :goto_1
    const-string v4, "CradleMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    if-gez v0, :cond_8

    const/16 v4, -0x63

    if-lt v0, v4, :cond_8

    .line 1148
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v4, v0

    move v0, v9

    .line 1152
    :goto_2
    div-int/lit8 v5, v4, 0x64

    .line 1153
    rem-int/lit8 v6, v4, 0x64

    div-int/lit8 v6, v6, 0xa

    .line 1154
    rem-int/lit8 v4, v4, 0xa

    .line 1158
    if-gtz v5, :cond_3

    if-ne v0, v9, :cond_5

    .line 1159
    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    :goto_3
    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v5, v7, :cond_7

    if-ltz v6, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v6, v7, :cond_7

    if-ltz v4, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v4, v7, :cond_7

    .line 1168
    if-ne v0, v9, :cond_6

    .line 1169
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1174
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1138
    :cond_4
    const v6, 0x7f0200a2

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1139
    const-string v0, "F"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v9, :cond_9

    .line 1140
    invoke-direct {p0, v4}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v0

    goto :goto_1

    .line 1161
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1171
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 1177
    :cond_7
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1179
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1180
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_8
    move v4, v0

    move v0, v8

    goto :goto_2

    :cond_9
    move v0, v4

    goto/16 :goto_1
.end method

.method private displayWeatherItemData(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 11
    .parameter

    .prologue
    const/16 v7, 0x8

    const v10, 0x7f0200a4

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v6, "CradleMain"

    .line 1014
    if-nez p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1092
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    const-string v0, "CradleMain"

    const-string v0, "displayWeatherItemData refresh"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1029
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1030
    iget v1, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1033
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1036
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1037
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1038
    const v3, 0x7f0a0029

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1039
    iget v5, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    .line 1040
    if-ne v4, v8, :cond_2

    .line 1041
    const v4, 0x7f0200a3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iget-object v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    const-string v4, "F"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1043
    iget v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->changeCELSIUStoFAHRENHEIT(I)I

    move-result v0

    .line 1055
    :goto_1
    const-string v4, "CradleMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-gez v0, :cond_6

    const/16 v4, -0x63

    if-lt v0, v4, :cond_6

    .line 1058
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v4, v0

    move v0, v8

    .line 1062
    :goto_2
    div-int/lit8 v5, v4, 0x64

    .line 1063
    rem-int/lit8 v6, v4, 0x64

    div-int/lit8 v6, v6, 0xa

    .line 1064
    rem-int/lit8 v4, v4, 0xa

    .line 1068
    if-gtz v5, :cond_1

    if-ne v0, v8, :cond_3

    .line 1069
    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    :goto_3
    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v5, v7, :cond_5

    if-ltz v6, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v6, v7, :cond_5

    if-ltz v4, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    array-length v7, v7

    if-ge v4, v7, :cond_5

    .line 1078
    if-ne v0, v8, :cond_4

    .line 1079
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1084
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1048
    :cond_2
    const v4, 0x7f0200a2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1049
    iget-object v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    const-string v4, "F"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_7

    .line 1050
    iget v0, p1, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->changeFAHRENHEITtoCELSIUS(I)I

    move-result v0

    goto :goto_1

    .line 1071
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1081
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemNumbers:[I

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 1087
    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1089
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1090
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    move v4, v0

    move v0, v9

    goto :goto_2

    :cond_7
    move v0, v5

    goto/16 :goto_1
.end method

.method private getDefaultCityWeather()V
    .locals 3

    .prologue
    .line 1881
    const-string v0, "show_fare_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1882
    const-string v1, "do_not_show_fare_weather_popup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1888
    const-string v0, "CradleMain"

    const-string v1, "[jangth] getDefaultCityWeather start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    sget-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    if-nez v0, :cond_0

    .line 1890
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V

    .line 1893
    :cond_0
    return-void
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F
    .locals 5
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 2009
    const/4 v3, 0x0

    .line 2010
    .local v3, sum:F
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 2011
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [F

    .line 2013
    .local v2, strWidths:[F
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2015
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2016
    aget v4, v2, v0

    add-float/2addr v3, v4

    .line 2015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2018
    :cond_0
    return v3
.end method

.method private registerTelephonyListener()V
    .locals 3

    .prologue
    .line 439
    const-string v1, "CradleMain"

    const-string v2, "registerTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 441
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 442
    return-void
.end method

.method private rescheduleScreenServer()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->stopScreenSaver()V

    .line 701
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    .line 702
    return-void
.end method

.method private savePreference()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 662
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_day_mode"

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 663
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    return-void
.end method

.method private scheduleScreenSaver()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 597
    return-void
.end method

.method private setCurrentClockView(I)V
    .locals 3
    .parameter "clockView"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 975
    packed-switch p1, :pswitch_data_0

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    :goto_0
    sput-boolean v1, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 1001
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1002
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    .line 1005
    :cond_0
    return-void

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 992
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 975
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
    .line 1689
    div-int/lit8 v0, p1, 0xa

    .line 1690
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1691
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1692
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1693
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1699
    :goto_0
    return-void

    .line 1696
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1697
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
    .line 1702
    div-int/lit8 v0, p1, 0xa

    .line 1703
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1704
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1705
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1706
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1712
    :goto_0
    return-void

    .line 1709
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1710
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setWeatherImg(Landroid/widget/ImageView;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0200ab

    const v3, 0x7f0200ad

    const v2, 0x7f0200ac

    const v1, 0x7f0200a8

    const v0, 0x7f0200a6

    .line 1204
    packed-switch p2, :pswitch_data_0

    .line 1323
    :goto_0
    :pswitch_0
    return-void

    .line 1206
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1209
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1212
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1215
    :pswitch_4
    const v0, 0x7f0200a7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1218
    :pswitch_5
    const v0, 0x7f0200a7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1221
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1224
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1227
    :pswitch_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1230
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1233
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1236
    :pswitch_b
    const v0, 0x7f0200a9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1239
    :pswitch_c
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1242
    :pswitch_d
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1245
    :pswitch_e
    const v0, 0x7f0200aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1248
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1251
    :pswitch_10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1254
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1257
    :pswitch_12
    const v0, 0x7f0200ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1260
    :pswitch_13
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1263
    :pswitch_14
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1266
    :pswitch_15
    const v0, 0x7f0200af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1269
    :pswitch_16
    const v0, 0x7f0200af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1272
    :pswitch_17
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1275
    :pswitch_18
    const v0, 0x7f0200af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1278
    :pswitch_19
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1281
    :pswitch_1a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1284
    :pswitch_1b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1287
    :pswitch_1c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1290
    :pswitch_1d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1293
    :pswitch_1e
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1296
    :pswitch_1f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1299
    :pswitch_20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1302
    :pswitch_21
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1305
    :pswitch_22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1308
    :pswitch_23
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1311
    :pswitch_24
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1314
    :pswitch_25
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1317
    :pswitch_26
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1320
    :pswitch_27
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1204
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
    .line 2022
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleMain;->getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F

    move-result v0

    .line 2023
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2025
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2026
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2029
    :goto_0
    return-void

    .line 2028
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method private setupCalendarDays()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x14

    .line 406
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    sub-int/2addr v2, v3

    sub-int v1, v2, v3

    .line 408
    .local v1, diff:I
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, dayString:Ljava/lang/String;
    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    add-int/lit8 v2, v1, 0x3

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 418
    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    add-int/lit8 v2, v1, 0x4

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 422
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    add-int/lit8 v2, v1, 0x5

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 426
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    add-int/lit8 v2, v1, 0x6

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    add-int/lit8 v2, v1, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 327
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView1:Landroid/view/View;

    .line 328
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHourView2:Landroid/view/View;

    .line 329
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView1:Landroid/view/View;

    .line 330
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMinView2:Landroid/view/View;

    .line 331
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    .line 332
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    .line 335
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSettingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAlarmButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mVoiceCommandButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mGalleryButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMusicButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherImage:Landroid/widget/ImageView;

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityName:Landroid/widget/TextView;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature0:Landroid/widget/ImageView;

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature1:Landroid/widget/ImageView;

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature2:Landroid/widget/ImageView;

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTemperature2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->tempSymbol:Landroid/widget/ImageView;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->tempSymbol:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    .line 384
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthClockView:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    .line 393
    return-void
.end method

.method private startGetDefaultCityWeather()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1896
    const-string v0, "CradleMain"

    const-string v1, "[jangth] startGetDefaultCityWeather"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/WeatherClockData;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    .line 1898
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1900
    if-eqz v1, :cond_0

    .line 1901
    new-instance v3, Lcom/sec/android/app/cradle/CradleMain$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/cradle/CradleMain$3;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1944
    new-instance v4, Lcom/sec/android/app/cradle/CradleMain$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/cradle/CradleMain$4;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1952
    new-instance v5, Lcom/sec/android/app/cradle/CradleMain$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleMain$5;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1959
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/WeatherClockData;->getWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 1962
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1974
    :goto_0
    return-void

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->getCitycount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->checkNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1967
    sput-boolean v6, Lcom/sec/android/app/cradle/CradleMain;->mIsNowLoadingWeather:Z

    .line 1972
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method private stopScreenSaver()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    :cond_0
    return-void
.end method

.method private unregisterTelephonyListener()V
    .locals 3

    .prologue
    .line 445
    const-string v1, "CradleMain"

    const-string v2, "unregisterTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 447
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 448
    return-void
.end method

.method private updateDayNightMode()V
    .locals 4

    .prologue
    const v2, 0x7f02006b

    const v1, 0x7f02005b

    const/4 v3, 0x1

    const-string v0, "power"

    .line 743
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v0, v3, :cond_3

    .line 744
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 764
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 768
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 817
    return-void

    .line 746
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 749
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 757
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 781
    :cond_3
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_1

    .line 800
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDayModeButton:Landroid/widget/Button;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 802
    :try_start_1
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_5

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 811
    :cond_5
    :goto_3
    iput-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mDimmed:Z

    goto :goto_1

    .line 783
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 786
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 790
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 794
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 795
    if-eqz v0, :cond_4

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 807
    :catch_1
    move-exception v0

    .line 808
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 744
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 781
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateSpeaker()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v6, "state"

    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    const-string v4, "audio"

    .line 474
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    if-eqz v0, :cond_2

    .line 476
    iput-boolean v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 482
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "state"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/sec/android/app/cradle/CradleMain$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/cradle/CradleMain$1;-><init>(Lcom/sec/android/app/cradle/CradleMain;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 500
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "state"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 713
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getDefaultCityIndex()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "cradle_weather_city_location"

    const-string v5, "cradle_weather_city"

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1337
    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1338
    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1340
    const-string v1, "cradle_weather_city"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1341
    const-string v1, "cradle_weather_city_location"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1343
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    :cond_1
    :goto_0
    return-void

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_city"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1348
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_city_location"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    .line 1369
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/cradle/Controller;->isCityAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1372
    iput v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentCityIdx:I

    .line 1374
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 1375
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1376
    const-string v3, "cradle_weather_city"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1377
    const-string v3, "cradle_weather_city_location"

    iget-object v3, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1378
    const-string v3, "cradle_weather_city_changed"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1379
    const-string v3, "cradle_weather_refresh_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1380
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1382
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v2, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1385
    iget-object v0, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1386
    iget-object v0, v1, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCityLocationName:Ljava/lang/String;

    goto :goto_0

    .line 1389
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/cradle/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1988
    .line 1990
    :try_start_0
    const-string v0, "com.sec.android.app.twwallpaperchooser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1997
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_wallpaper_resource_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1999
    if-nez v1, :cond_0

    move-object v0, v4

    .line 2005
    :goto_0
    return-object v0

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1993
    const-string v0, "CradleMain"

    const-string v1, "Fail to Get twwallpaperContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1994
    goto :goto_0

    .line 2002
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2003
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getWeatherDataFromDB()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    .line 1329
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 613
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 614
    const-string v0, "old_brightness"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightness:I

    .line 615
    const-string v0, "old_brightness_mode"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightnessMode:I

    .line 617
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 618
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v4, "com.sec.android.app.cradle"

    const-string v3, "CradleMain"

    .line 1770
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 1771
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1772
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1773
    packed-switch v1, :pswitch_data_0

    .line 1847
    :goto_0
    :pswitch_0
    return-void

    .line 1781
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    goto :goto_0

    .line 1784
    :pswitch_2
    const-string v0, "CradleMain"

    const-string v0, "change day mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v0, v2, :cond_0

    .line 1786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 1791
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    goto :goto_0

    .line 1789
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    goto :goto_1

    .line 1794
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateSpeaker()V

    goto :goto_0

    .line 1804
    :pswitch_4
    const-string v1, "com.sec.android.app.cradle"

    const-string v1, "com.sec.android.app.cradle.CradleWeatherSettings"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1808
    :pswitch_5
    const-string v1, "com.sec.android.app.cradle"

    const-string v1, "com.sec.android.app.cradle.CradleHomeSettings"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1810
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1813
    :pswitch_6
    const-string v1, "CradleMain"

    const-string v1, "button alarm~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1818
    :pswitch_7
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1829
    :pswitch_8
    const-string v1, "com.cooliris.media"

    const-string v2, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1833
    :pswitch_9
    const-string v1, "com.sec.android.widgetapp.infoalarm"

    const-string v2, "com.sec.android.widgetapp.infoalarm.activity.InfoAlarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1837
    :pswitch_a
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.list.activity.MpMainTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1773
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
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, -0x3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setFormat(I)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 219
    .local v5, sm:Landroid/app/StatusBarManager;
    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapse()V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 224
    .local v2, i:Landroid/content/Intent;
    const-string v8, "kill_task"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 225
    .local v3, kill:Z
    if-eqz v3, :cond_1

    .line 226
    const-string v8, "CradleMain"

    const-string v9, "kill task mode"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    .line 229
    :cond_1
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/sec/android/app/cradle/CradleMain;->setContentView(I)V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentOrientation:I

    .line 232
    invoke-static {p0}, Lcom/sec/android/app/cradle/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/cradle/Controller;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 234
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 235
    iget-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "cradle_day_mode"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 236
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v8, Lcom/sec/android/app/cradle/CradleMain$CallListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/sec/android/app/cradle/CradleMain$CallListener;-><init>(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/CradleMain$1;)V

    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupViews()V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v6

    .line 242
    .local v6, time:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 243
    iget-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 244
    iget-object v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 246
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 247
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v8, "preferences_first_day_of_week"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mStartDay:I

    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->setupCalendarDays()V

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.google.android.voicesearch"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 257
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iput-boolean v12, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 263
    iget-boolean v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    if-eqz v8, :cond_3

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, country:Ljava/lang/String;
    const-string v8, "en_US"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "en_AU"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "en_GB"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 266
    :cond_2
    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mEnableVoiceSearch:Z

    .line 270
    .end local v0           #country:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 272
    iput-boolean v11, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromRecent:Z

    .line 299
    :cond_4
    const/16 v8, 0xe1

    iput v8, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    .line 301
    return-void

    .line 258
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 259
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v12, p0, Lcom/sec/android/app/cradle/CradleMain;->mHasVoiceSearch:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 520
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    .line 521
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackground:Landroid/widget/ImageView;

    .line 522
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mHandler:Landroid/os/Handler;

    .line 523
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->listener:Lcom/sec/android/app/cradle/CradleMain$CallListener;

    .line 524
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 525
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->weatherList:Ljava/util/ArrayList;

    .line 526
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeather:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->cancelLoadingWeather()V

    .line 550
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 551
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 718
    if-nez v0, :cond_0

    .line 720
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 723
    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    const/4 v0, 0x1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 726
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    .line 678
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->savePreference()V

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->unregisterTelephonyListener()V

    .line 681
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->stopScreenSaver()V

    .line 683
    sget-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPowerManagerService:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "CradleMain"

    .line 836
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 840
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromRecent:Z

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->registerTelephonyListener()V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    .line 852
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    if-ne v0, v5, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getWeatherDataFromDB()V

    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityIndex()V

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_desk_connected"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 858
    const-string v1, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isDockConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    if-ne v0, v5, :cond_8

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 863
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 864
    iput-boolean v5, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 870
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 871
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 880
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDailyBriefingButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, -0x32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 890
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    .line 891
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 940
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_day_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    .line 941
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->updateDayNightMode()V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 944
    if-nez v0, :cond_a

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTimeInterval:I

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    .line 958
    const-string v0, "CradleMain"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[jangth] onresume refresh time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mRefreshTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    if-nez v0, :cond_5

    .line 960
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    .line 962
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 965
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mDate:Ljava/util/Date;

    .line 967
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 970
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->scheduleScreenSaver()V

    .line 972
    return-void

    .line 867
    :cond_7
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerMode:Z

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 876
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    goto/16 :goto_2

    .line 893
    :pswitch_0
    iput-object v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 896
    :pswitch_1
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 898
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 900
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 905
    if-eqz v1, :cond_4

    .line 907
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 909
    :catch_1
    move-exception v1

    .line 910
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 913
    :catch_2
    move-exception v1

    .line 914
    const-string v2, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    iput-object v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 901
    :catch_3
    move-exception v2

    .line 902
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 903
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 905
    if-eqz v1, :cond_4

    .line 907
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 909
    :catch_4
    move-exception v1

    .line 910
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 905
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_9

    .line 907
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 911
    :cond_9
    :goto_5
    :try_start_9
    throw v2

    .line 909
    :catch_5
    move-exception v1

    .line 910
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 936
    :pswitch_2
    iput-object v6, p0, Lcom/sec/android/app/cradle/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 950
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_clock"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    .line 951
    iget v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentClockView(I)V

    goto/16 :goto_4

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v2, "Updated.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v2, "Alarm.To.Update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/cradle/CradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const v13, 0x7f050039

    const/high16 v12, 0x7f05

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1592
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1593
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1594
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1596
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1597
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1598
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 1599
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    const/16 v3, 0xc

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    .line 1605
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1606
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1615
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    .line 1616
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->sec:I

    .line 1617
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v11, :cond_4

    .line 1618
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1619
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1620
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1627
    :goto_2
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->setHour(I)V

    .line 1628
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->setMinute(I)V

    .line 1630
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v11, :cond_1

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    const-string v3, "AA"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    const-string v3, "EEEE MMMM dd, yyyy"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v10

    iget v6, p0, Lcom/sec/android/app/cradle/CradleMain;->min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1655
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1656
    const-string v3, "MMMM"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    const-string v2, "dd"

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1659
    const v2, 0x7f0a0012

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1660
    const v3, 0x7f0a0013

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1661
    div-int/lit8 v8, v7, 0xa

    .line 1662
    rem-int/lit8 v7, v7, 0xa

    .line 1663
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v8, v9, v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1664
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mMonthNumbers:[I

    aget v2, v2, v7

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    if-ne v2, v11, :cond_5

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1668
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1675
    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    const-string v0, "AA"

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1678
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    .line 1679
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    if-nez v0, :cond_6

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mAddCity:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1686
    :goto_4
    return-void

    .line 1601
    :cond_2
    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    if-nez v2, :cond_0

    .line 1602
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/cradle/CradleMain;->hour:I

    goto/16 :goto_0

    .line 1611
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1612
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1623
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mTimeColon:Landroid/view/View;

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1624
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1625
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mAmpmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1671
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1672
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1684
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleMain;->refreshWeather()V

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->rescheduleScreenServer()V

    .line 708
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshWeather()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "cradle_weather_city_changed"

    .line 1409
    const-string v0, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshWeather() mIsWeatherClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsWeatherClockView:Z

    if-ne v0, v3, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_city_changed"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1412
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleMain;->mIsSetWeatherRefresh:Z

    if-ne v1, v3, :cond_2

    .line 1413
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->checkRefresh()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1415
    const-string v1, "cradle_weather_city_changed"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1417
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityWeather()V

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0

    .line 1424
    :cond_2
    if-ne v0, v3, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1426
    const-string v1, "cradle_weather_city_changed"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1428
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->getDefaultCityWeather()V

    goto :goto_0

    .line 1431
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleMain;->displayWeatherItemData()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 599
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/CradleMain;->mIsShowingScreenSaver:Z

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    const-string v1, "daymode"

    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    const-string v1, "brightness_day"

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->brightness_Day:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v1, "old_brightness"

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldBrightness:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v1, "old_brightness_mode"

    iget v2, p0, Lcom/sec/android/app/cradle/CradleMain;->mOldSystemBrightnessMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 608
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1852
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :goto_0
    return-void

    .line 1853
    :catch_0
    move-exception v0

    .line 1854
    const v0, 0x7f080008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
