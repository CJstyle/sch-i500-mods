.class public Lcom/sec/android/app/cradle/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/MonthView$DismissPopup;
    }
.end annotation


# static fields
.field private static BUSYBIT_RIGHT_MARGIN:I = 0x0

.field private static BUSYBIT_TOP_BOTTOM_MARGIN:I = 0x0

.field private static BUSYBIT_WIDTH:I = 0x0

.field private static final BUSY_SLOT_MASK:I = 0xf

.field private static final DEBUG_BUSYBITS:Z = false

.field private static HORIZONTAL_FLING_THRESHOLD:I = 0x0

.field private static final HOURS_PER_BUSY_SLOT:I = 0x4

.field private static HOUR_GAP:F = 0.0f

.field private static final INTERVALS_PER_BUSY_SLOT:I = 0x4

.field static final MONTH_COLUMN_NUM:I = 0x8

.field static final MONTH_COLUMN_WEEK:I = 0x0

.field private static MONTH_DAY_GAP:I = 0x0

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final POPUP_HEIGHT:I = 0x64

.field private static final PROFILE_LOAD_TIME:Z = false

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static final SLOTS_PER_DAY:I = 0x6

.field private static WEEK_GAP:I

.field private static mDayMode:Z

.field private static mEventDays:[I

.field private static mRedrawScreen:Z

.field private static mScale:F


# instance fields
.field private MONTH_ROW_NUM:I

.field private final SELECTED_COL:Ljava/lang/String;

.field private final SELECTED_ROW:Ljava/lang/String;

.field private final SELECTION_MODE:Ljava/lang/String;

.field private final START_SELECTED_COL:Ljava/lang/String;

.field private final START_SELECTED_ROW:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAllDayCounts:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorder:I

.field private mBoxSelected:Landroid/graphics/drawable/Drawable;

.field private mBusyBits:[[B

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

.field private mDayBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDayTextSize:I

.field private mDismissPopup:Lcom/sec/android/app/cradle/MonthView$DismissPopup;

.field private mEventBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventGeometry:Lcom/sec/android/app/cradle/EventGeometry;

.field private mEventIcon:Landroid/graphics/drawable/Drawable;

.field private final mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

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

.field private mFirstColumnCellWidth:I

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLaunchDayView:Z

.field private mMonthDayNumberColor:I

.field mMonthHeight:I

.field private mMonthNotWithinDayColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSelectedColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthTodayNumberColor:I

.field private mMonthWeekNumColor:I

.field private mNavigator:Lcom/sec/android/app/cradle/Navigator;

.field private mNumDays:I

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mParentActivity:Lcom/sec/android/app/cradle/CradleMain;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPressedCol:I

.field private mPressedRow:I

.field private mPreviousPopupHeight:I

.field private mQuickAddHeight:I

.field private mQuickAddSelect:Landroid/graphics/drawable/Drawable;

.field private mQuickAddTopMargin:I

.field private mRawBusyBits:[I

.field private mRect:Landroid/graphics/Rect;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectedCol:I

.field private mSelectedRow:I

.field private mSelectionMode:I

.field private mShowToast:Z

.field private mShowWeekNumbers:Z

.field private mStartDay:I

.field private mTempTime:Landroid/text/format/Time;

.field private mToday:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mViewCalendar:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const/high16 v0, 0x3f80

    sput v0, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    .line 71
    sput v1, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    .line 72
    sput v1, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    .line 73
    const/high16 v0, 0x3f00

    sput v0, Lcom/sec/android/app/cradle/MonthView;->HOUR_GAP:F

    .line 75
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_WIDTH:I

    .line 76
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_RIGHT_MARGIN:I

    .line 77
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    .line 79
    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/cradle/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    .line 123
    const/16 v0, 0x1f

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/cradle/MonthView;->mEventDays:[I

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/Navigator;)V
    .locals 7
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "MonthView"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "selection_mode"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->SELECTION_MODE:Ljava/lang/String;

    .line 57
    const-string v0, "selected_row"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->SELECTED_ROW:Ljava/lang/String;

    .line 58
    const-string v0, "selected_col"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->SELECTED_COL:Ljava/lang/String;

    .line 59
    const-string v0, "start_selected_row"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->START_SELECTED_ROW:Ljava/lang/String;

    .line 60
    const-string v0, "start_selected_col"

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->START_SELECTED_COL:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mSavedTime:Landroid/text/format/Time;

    .line 100
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 104
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mRect:Landroid/graphics/Rect;

    .line 142
    const/4 v0, 0x6

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBusyBits:[[B

    .line 145
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mRawBusyBits:[I

    .line 146
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mAllDayCounts:[I

    .line 153
    new-instance v0, Lcom/sec/android/app/cradle/MonthView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/MonthView$DismissPopup;-><init>(Lcom/sec/android/app/cradle/MonthView;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mDismissPopup:Lcom/sec/android/app/cradle/MonthView$DismissPopup;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 163
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/MonthView;->mShowWeekNumbers:Z

    .line 164
    iput-boolean v2, p0, Lcom/sec/android/app/cradle/MonthView;->mShowToast:Z

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    .line 186
    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 192
    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mPressedRow:I

    .line 193
    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mPressedCol:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 227
    sget v0, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    .line 229
    sget v0, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 230
    sget v0, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    .line 231
    sget v0, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    .line 232
    sget v0, Lcom/sec/android/app/cradle/MonthView;->HOUR_GAP:F

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/cradle/MonthView;->HOUR_GAP:F

    .line 234
    sget v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_WIDTH:I

    .line 235
    sget v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_RIGHT_MARGIN:I

    .line 236
    sget v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    .line 238
    sget v0, Lcom/sec/android/app/cradle/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/cradle/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    .line 242
    :cond_0
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonthView mScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/cradle/MonthView;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p1, Lcom/sec/android/app/cradle/CradleMain;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    .line 245
    iput-object p2, p0, Lcom/sec/android/app/cradle/MonthView;->mNavigator:Lcom/sec/android/app/cradle/Navigator;

    .line 246
    new-instance v0, Lcom/sec/android/app/cradle/EventGeometry;

    invoke-direct {v0}, Lcom/sec/android/app/cradle/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventGeometry:Lcom/sec/android/app/cradle/EventGeometry;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventGeometry:Lcom/sec/android/app/cradle/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/cradle/EventGeometry;->setMinEventHeight(F)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventGeometry:Lcom/sec/android/app/cradle/EventGeometry;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/cradle/EventGeometry;->setHourGap(F)V

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/MonthView;->init(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/MonthView;)Lcom/sec/android/app/cradle/CradleMain;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mParentActivity:Lcom/sec/android/app/cradle/CradleMain;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/MonthView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/cradle/MonthView;->convertBusyBits()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/MonthView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/cradle/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/MonthView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/cradle/MonthView;->calEventDay()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/MonthView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private calEventDay()V
    .locals 11

    .prologue
    .line 584
    iget v6, p0, Lcom/sec/android/app/cradle/MonthView;->mNumDays:I

    .line 585
    .local v6, numDays:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 586
    .local v3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 587
    .local v7, numEvents:I
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    .line 589
    .local v0, date:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 590
    sget-object v9, Lcom/sec/android/app/cradle/MonthView;->mEventDays:[I

    const/4 v10, 0x0

    aput v10, v9, v4

    .line 591
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v7, :cond_0

    .line 592
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/Event;

    .line 594
    .local v2, event:Lcom/sec/android/app/cradle/Event;
    iget v8, v2, Lcom/sec/android/app/cradle/Event;->startDay:I

    .line 595
    .local v8, startDay:I
    iget v1, v2, Lcom/sec/android/app/cradle/Event;->endDay:I

    .line 597
    .local v1, endDay:I
    if-gt v8, v0, :cond_1

    if-lt v1, v0, :cond_1

    .line 598
    sget-object v9, Lcom/sec/android/app/cradle/MonthView;->mEventDays:[I

    const/4 v10, 0x1

    aput v10, v9, v4

    .line 602
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/app/cradle/Event;
    .end local v8           #startDay:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 589
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 591
    .restart local v1       #endDay:I
    .restart local v2       #event:Lcom/sec/android/app/cradle/Event;
    .restart local v8       #startDay:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 604
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/app/cradle/Event;
    .end local v5           #j:I
    .end local v8           #startDay:I
    :cond_2
    return-void
.end method

.method private clearBitmapCache()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 855
    return-void
.end method

.method private convertBusyBits()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1096
    const/4 v1, 0x0

    .local v1, day:I
    :goto_0
    const/16 v4, 0x1f

    if-ge v1, v4, :cond_3

    .line 1097
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mRawBusyBits:[I

    aget v0, v4, v1

    .line 1098
    .local v0, bits:I
    const/4 v2, 0x0

    .local v2, slot:I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 1099
    and-int/lit8 v3, v0, 0xf

    .line 1100
    .local v3, val:I
    ushr-int/lit8 v0, v0, 0x4

    .line 1101
    if-nez v3, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v6, v4, v2

    .line 1098
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1104
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v2

    goto :goto_2

    .line 1107
    .end local v3           #val:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mAllDayCounts:[I

    aget v4, v4, v1

    if-lez v4, :cond_2

    .line 1108
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v6

    .line 1109
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v5

    .line 1096
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .end local v0           #bits:I
    .end local v2           #slot:I
    :cond_3
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 676
    .local v8, isLandscape:Z
    :goto_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 677
    .local v6, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/sec/android/app/cradle/MonthView;->mRect:Landroid/graphics/Rect;

    .line 678
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    .line 681
    .local v10, columnDay1:I
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v10

    add-int/lit8 v1, v0, 0x1

    .line 683
    .local v1, day:I
    const/4 v2, 0x0

    .line 684
    .local v2, weekNum:I
    const/4 v9, 0x0

    .line 685
    .local v9, calendar:Ljava/util/Calendar;
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 687
    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    const/4 v0, 0x1

    move v12, v0

    .line 690
    .local v12, noPrevMonth:Z
    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v12, v9}, Lcom/sec/android/app/cradle/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    .end local v2           #weekNum:I
    move-result v2

    .line 694
    .end local v12           #noPrevMonth:Z
    .restart local v2       #weekNum:I
    :cond_0
    const-string v0, "MonthView"

    const-string v3, "drawbox"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v3, 0x0

    .local v3, row:I
    :goto_2
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    if-ge v3, v0, :cond_7

    .line 696
    const/4 v4, 0x0

    .local v4, column:I
    :goto_3
    const/16 v0, 0x8

    if-ge v4, v0, :cond_4

    move-object v0, p0

    move-object v5, p1

    .line 697
    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/cradle/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 698
    if-eqz v4, :cond_1

    .line 699
    add-int/lit8 v1, v1, 0x1

    .line 696
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 673
    .end local v1           #day:I
    .end local v2           #weekNum:I
    .end local v3           #row:I
    .end local v4           #column:I
    .end local v6           #p:Landroid/graphics/Paint;
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v8           #isLandscape:Z
    .end local v9           #calendar:Ljava/util/Calendar;
    .end local v10           #columnDay1:I
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 687
    .restart local v1       #day:I
    .restart local v2       #weekNum:I
    .restart local v6       #p:Landroid/graphics/Paint;
    .restart local v7       #r:Landroid/graphics/Rect;
    .restart local v8       #isLandscape:Z
    .restart local v9       #calendar:Ljava/util/Calendar;
    .restart local v10       #columnDay1:I
    :cond_3
    const/4 v0, 0x0

    move v12, v0

    goto :goto_1

    .line 703
    .restart local v3       #row:I
    .restart local v4       #column:I
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_5

    .line 704
    add-int/lit8 v2, v2, 0x1

    .line 705
    const/16 v0, 0x35

    if-lt v2, v0, :cond_5

    .line 706
    const-string v0, "MonthView"

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #weekNum:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw weeknum day = "

    .end local v4           #column:I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mFirstJulianDay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    sub-int v0, v1, v0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_6

    const/4 v0, 0x1

    move v11, v0

    .line 709
    .local v11, inCurrentMonth:Z
    :goto_4
    add-int/lit8 v0, v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v11, v9}, Lcom/sec/android/app/cradle/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 710
    .restart local v2       #weekNum:I
    const-string v0, "MonthView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw weeknum inCurrentMonth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v0, "MonthView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw weeknum row = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " weekNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v11           #inCurrentMonth:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 708
    .end local v2           #weekNum:I
    :cond_6
    const/4 v0, 0x0

    move v11, v0

    goto :goto_4

    .line 717
    .restart local v2       #weekNum:I
    :cond_7
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .locals 21
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"

    .prologue
    .line 919
    const/4 v13, 0x0

    .line 920
    .local v13, drawSelection:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    move v5, v0

    if-eqz v5, :cond_0

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v13

    .line 924
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    .line 925
    .local v18, withinCurrentMonth:Z
    if-nez v18, :cond_2

    .line 1068
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    const/4 v15, 0x0

    .line 929
    .local v15, isToday:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v11

    .line 930
    .local v11, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    move-object v5, v0

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getYear()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    move-object v6, v0

    iget v6, v6, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    move-object v6, v0

    iget v6, v6, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_3

    if-eqz p4, :cond_3

    .line 932
    const/4 v15, 0x1

    .line 941
    :cond_3
    sget v5, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    move v6, v0

    add-int/2addr v5, v6

    mul-int v20, p3, v5

    .line 944
    .local v20, y:I
    if-nez p4, :cond_9

    .line 945
    const/16 v19, 0x0

    .line 949
    .local v19, x:I
    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 950
    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 951
    if-nez p4, :cond_a

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mFirstColumnCellWidth:I

    move v5, v0

    add-int v5, v5, v19

    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 956
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    move v5, v0

    add-int v5, v5, v20

    sget v6, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mPressedRow:I

    move v5, v0

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mPressedCol:I

    move v5, v0

    move v0, v5

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    if-nez v13, :cond_4

    .line 970
    const/4 v13, 0x1

    .line 972
    :cond_4
    if-eqz v13, :cond_c

    .line 973
    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    .line 982
    :cond_5
    if-eqz v18, :cond_6

    if-eqz p4, :cond_6

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/cradle/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 986
    :cond_6
    if-eqz v18, :cond_b

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    .line 988
    .local v14, focusedDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 989
    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1010
    .end local v14           #focusedDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_3
    if-eqz p4, :cond_1

    .line 1011
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1012
    const/4 v5, 0x1

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1013
    const/4 v5, 0x0

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mDayTextSize:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1016
    if-eqz v13, :cond_11

    .line 1017
    if-nez v18, :cond_e

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthOtherMonthDayNumberColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1057
    :goto_4
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1059
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v16, v5, v6

    .line 1061
    .local v16, textX:I
    if-eqz p8, :cond_8

    .line 1062
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    sub-int v16, v5, v6

    .line 1063
    :cond_8
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mDayTextSize:I

    move v6, v0

    div-int/lit8 v6, v6, 0x3

    add-int v17, v5, v6

    .line 1066
    .local v17, textY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 947
    .end local v16           #textX:I
    .end local v17           #textY:I
    .end local v19           #x:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mFirstColumnCellWidth:I

    move v5, v0

    sget v6, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int v6, p4, v6

    sget v7, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCellWidth:I

    move v8, v0

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int v19, v5, v6

    .restart local v19       #x:I
    goto/16 :goto_1

    .line 954
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mCellWidth:I

    move v5, v0

    add-int v5, v5, v19

    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 991
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthNotWithinDayColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 992
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 997
    :cond_c
    if-eqz v18, :cond_d

    if-eqz v15, :cond_d

    .line 1004
    :cond_d
    if-eqz v18, :cond_7

    if-eqz p4, :cond_7

    .line 1005
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/cradle/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1020
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getStartDay()I

    move-result v5

    add-int v5, v5, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v12, v5, 0x1

    .line 1021
    .local v12, dayOfWeek:I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_f

    .line 1022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthSundayNumberColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1025
    :cond_f
    sget-boolean v5, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    if-eqz v5, :cond_10

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1029
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1035
    .end local v12           #dayOfWeek:I
    :cond_11
    if-nez v18, :cond_12

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthOtherMonthDayNumberColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1037
    :cond_12
    if-eqz v15, :cond_14

    .line 1039
    sget-boolean v5, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    if-eqz v5, :cond_13

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1043
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1046
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/MonthView;->getStartDay()I

    move-result v5

    add-int v5, v5, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v12, v5, 0x1

    .line 1047
    .restart local v12       #dayOfWeek:I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_15

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthSundayNumberColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1052
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/MonthView;->mMonthDayNumberColor:I

    move v5, v0

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"

    .prologue
    .line 1116
    sget-boolean v6, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    if-eqz v6, :cond_1

    .line 1117
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f02009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 1122
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 1123
    .local v2, eventIcon:Landroid/graphics/drawable/Drawable;
    iget v4, p3, Landroid/graphics/Rect;->right:I

    .line 1124
    .local v4, right:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v3, v4, v6

    .line 1125
    .local v3, left:I
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1126
    .local v0, bottom:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v5, v0, v6

    .line 1129
    .local v5, top:I
    iget v6, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    sub-int v1, p1, v6

    .line 1131
    .local v1, day:I
    sget-object v6, Lcom/sec/android/app/cradle/MonthView;->mEventDays:[I

    aget v6, v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1132
    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1134
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1135
    const-string v6, "MonthView"

    const-string v7, "drawEvents~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    return-void

    .line 1120
    .end local v0           #bottom:I
    .end local v1           #day:I
    .end local v2           #eventIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0200a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mEventIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private drawingCalc(I)V
    .locals 3
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_2

    :cond_0
    if-lez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    if-lez v0, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1314
    :cond_1
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1315
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1319
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1323
    return-void
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .locals 6
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1141
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1142
    if-eqz p3, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    invoke-virtual {p4, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1144
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getYear()I

    move-result v2

    invoke-virtual {p4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 1169
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    return v2

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    .line 1147
    .local v0, month:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getYear()I

    move-result v1

    .line 1148
    .local v1, year:I
    if-ge p1, v4, :cond_2

    .line 1150
    if-nez v0, :cond_1

    .line 1151
    add-int/lit8 v1, v1, -0x1

    .line 1152
    const/16 v0, 0xb

    .line 1165
    :goto_1
    invoke-virtual {p4, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1166
    invoke-virtual {p4, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1154
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1158
    :cond_2
    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    .line 1159
    add-int/lit8 v1, v1, 0x1

    .line 1160
    const/4 v0, 0x0

    goto :goto_1

    .line 1162
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 11
    .parameter "activity"

    .prologue
    .line 276
    iget-boolean v6, p1, Lcom/sec/android/app/cradle/CradleMain;->dayMode:Z

    sput-boolean v6, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    .line 277
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/MonthView;->setFocusable(Z)V

    .line 278
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/MonthView;->setFocusableInTouchMode(Z)V

    .line 279
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/MonthView;->setClickable(Z)V

    .line 280
    invoke-virtual {p0, p0}, Lcom/sec/android/app/cradle/MonthView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 281
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView;->mParentActivity:Lcom/sec/android/app/cradle/CradleMain;

    .line 282
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 284
    .local v3, now:J
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 285
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v7, 0x1

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 286
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 287
    .local v1, millis:J
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    .line 288
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 291
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    if-nez v6, :cond_0

    .line 292
    new-instance v6, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    iget-object v7, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    iget-object v8, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    iget-object v9, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getStartDay()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    .line 295
    :cond_0
    const/4 v6, 0x6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    .line 297
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 298
    .local v0, maxDay:I
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    .line 299
    iget v6, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    .line 300
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    .line 301
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    new-instance v7, Lcom/sec/android/app/cradle/MonthView$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/MonthView$1;-><init>(Lcom/sec/android/app/cradle/MonthView;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 307
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    .line 308
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 310
    invoke-virtual {p1}, Lcom/sec/android/app/cradle/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    .line 311
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0200c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0200c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mQuickAddSelect:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 319
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x7f050028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthWeekNumColor:I

    .line 320
    const v6, 0x7f050022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 321
    const v6, 0x7f05001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthDayNumberColor:I

    .line 323
    sget-boolean v6, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 324
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f02009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 325
    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthTodayNumberColor:I

    .line 326
    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSelectedColor:I

    .line 333
    :goto_0
    const v6, 0x7f050024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSundayNumberColor:I

    .line 334
    const v6, 0x7f050025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSaturdayNumberColor:I

    .line 336
    const v6, 0x7f050030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthNotWithinDayColor:I

    .line 339
    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    .line 340
    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCellWidth:I

    .line 343
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstColumnCellWidth:I

    .line 346
    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mDayTextSize:I

    .line 349
    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mQuickAddHeight:I

    .line 350
    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mQuickAddTopMargin:I

    .line 354
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/cradle/MonthView$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/MonthView$2;-><init>(Lcom/sec/android/app/cradle/MonthView;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 513
    return-void

    .line 329
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0200a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 330
    const v6, 0x7f050020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthTodayNumberColor:I

    .line 331
    const v6, 0x7f050020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSelectedColor:I

    goto :goto_0
.end method

.method private recycleAndClearBitmapCache(Landroid/util/SparseArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, bitmapCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 859
    .local v1, size:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 860
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 864
    return-void
.end method


# virtual methods
.method animationFinished()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 613
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 614
    return-void
.end method

.method animationStarted()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method dismissPopup()V
    .locals 2

    .prologue
    .line 1643
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/MonthView;->mShowToast:Z

    if-nez v1, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1649
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1652
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1653
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mDismissPopup:Lcom/sec/android/app/cradle/MonthView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method getPressedColumn(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 1280
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstColumnCellWidth:I

    if-gt p1, v1, :cond_1

    .line 1281
    const/4 v0, 0x0

    .line 1285
    .local v0, col:I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 1286
    const/4 v0, 0x7

    .line 1288
    :cond_0
    return v0

    .line 1283
    .end local v0           #col:I
    :cond_1
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstColumnCellWidth:I

    sub-int v1, p1, v1

    sget v2, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/cradle/MonthView;->MONTH_DAY_GAP:I

    iget v3, p0, Lcom/sec/android/app/cradle/MonthView;->mCellWidth:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #col:I
    goto :goto_0
.end method

.method getPressedRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1268
    sget v1, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    sub-int v1, p1, v1

    sget v2, Lcom/sec/android/app/cradle/MonthView;->WEEK_GAP:I

    iget v3, p0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 1269
    .local v0, row:I
    if-gez v0, :cond_0

    .line 1270
    const/4 v0, 0x0

    .line 1272
    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 1273
    const/4 v0, 0x5

    .line 1275
    :cond_1
    return v0
.end method

.method public getQuickAddArrowLeft()I
    .locals 1

    .prologue
    .line 803
    const/4 v0, -0x1

    return v0
.end method

.method public getQuickAddHeight()I
    .locals 2

    .prologue
    .line 785
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mQuickAddHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getQuickAddLeft()I
    .locals 2

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getQuickAddTop()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 794
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 795
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/MonthView;->getLocationInWindow([I)V

    .line 796
    aget v1, v0, v3

    if-nez v1, :cond_0

    .line 797
    const/4 v1, 0x0

    .line 799
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedRow:I

    iget v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/cradle/MonthView;->mQuickAddTopMargin:I

    add-int/2addr v1, v2

    aget v2, v0, v3

    add-int/2addr v1, v2

    goto :goto_0

    .line 794
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getQuickAddWidth()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCellWidth:I

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method getSelectedColumn()I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    return v0
.end method

.method public getSelectedMillis()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1252
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1254
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1257
    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 1258
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 1259
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 1260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1228
    iget-object v3, p0, Lcom/sec/android/app/cradle/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1229
    .local v3, time:Landroid/text/format/Time;
    iget-object v5, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1231
    iget v5, v3, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/text/format/Time;->month:I

    .line 1232
    iget-object v5, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v5

    iput v5, v3, Landroid/text/format/Time;->monthDay:I

    .line 1233
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1235
    .local v0, millis:J
    iget-wide v5, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1236
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1237
    .local v4, today:I
    if-ne v2, v4, :cond_0

    .line 1238
    iget-object v5, p0, Lcom/sec/android/app/cradle/MonthView;->mToday:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->hour:I

    .line 1243
    :goto_0
    iput v9, v3, Landroid/text/format/Time;->minute:I

    .line 1244
    iput v9, v3, Landroid/text/format/Time;->second:I

    .line 1245
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1247
    return-object v3

    .line 1241
    :cond_0
    const/16 v5, 0x8

    iput v5, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1214
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1216
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1223
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    return v0
.end method

.method getStartDay()I
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mParentActivity:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_first_day_of_week"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/cradle/MonthView;->mStartDay:I

    .line 256
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mStartDay:I

    return v1
.end method

.method getTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 516
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 627
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 629
    invoke-direct {p0}, Lcom/sec/android/app/cradle/MonthView;->clearBitmapCache()V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 648
    const-string v1, "MonthView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-boolean v1, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/cradle/MonthView;->drawingCalc(I)V

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 659
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 660
    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 662
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 667
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/cradle/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 670
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1519
    iget v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    if-nez v2, :cond_2

    .line 1520
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x16

    if-eq p1, v2, :cond_0

    const/16 v2, 0x15

    if-eq p1, v2, :cond_0

    const/16 v2, 0x13

    if-eq p1, v2, :cond_0

    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    .line 1525
    :cond_0
    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1526
    sput-boolean v3, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1527
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    move v2, v3

    .line 1610
    :goto_0
    return v2

    .line 1529
    :cond_1
    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    .line 1532
    iput v3, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1533
    sput-boolean v3, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    move v2, v3

    .line 1535
    goto :goto_0

    .line 1539
    :cond_2
    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1540
    const/4 v1, 0x0

    .line 1541
    .local v1, redraw:Z
    const/4 v0, 0x0

    .line 1543
    .local v0, other:Landroid/text/format/Time;
    packed-switch p1, :pswitch_data_0

    .line 1602
    :goto_1
    if-eqz v0, :cond_8

    .line 1603
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1604
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mNavigator:Lcom/sec/android/app/cradle/Navigator;

    invoke-interface {v2, v0, v3}, Lcom/sec/android/app/cradle/Navigator;->goTo(Landroid/text/format/Time;Z)V

    :cond_3
    :goto_2
    move v2, v1

    .line 1610
    goto :goto_0

    .line 1550
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->up()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1552
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1553
    iget v2, v0, Landroid/text/format/Time;->month:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1554
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1557
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->down()Z

    .line 1559
    :cond_4
    const/4 v1, 0x1

    .line 1560
    goto :goto_1

    .line 1563
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->down()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1565
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1566
    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1567
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1570
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->up()Z

    .line 1572
    :cond_5
    const/4 v1, 0x1

    .line 1573
    goto :goto_1

    .line 1576
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->left()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1578
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1579
    iget v2, v0, Landroid/text/format/Time;->month:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1580
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1583
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->right()Z

    .line 1585
    :cond_6
    const/4 v1, 0x1

    .line 1586
    goto :goto_1

    .line 1589
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->right()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1591
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1592
    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1593
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1596
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->left()Z

    .line 1598
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1605
    :cond_8
    if-eqz v1, :cond_3

    .line 1606
    sput-boolean v3, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1607
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    goto/16 :goto_2

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1486
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1488
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1514
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1490
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1495
    iget v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1500
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1501
    sput-boolean v6, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1502
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    goto :goto_0

    .line 1507
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1508
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1509
    sput-boolean v6, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1510
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 1511
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->performLongClick()Z

    goto :goto_0

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 641
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/MonthView;->setMeasuredDimension(II)V

    .line 644
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/MonthView;->drawingCalc(I)V

    .line 621
    invoke-direct {p0}, Lcom/sec/android/app/cradle/MonthView;->clearBitmapCache()V

    .line 623
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 722
    .local v0, action:I
    const-string v1, "MonthView"

    const-string v2, "onTouchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    packed-switch v0, :pswitch_data_0

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 772
    :goto_0
    return v1

    .line 725
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 726
    goto :goto_0

    .line 731
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 735
    goto :goto_0

    .line 737
    :cond_0
    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mPressedRow:I

    .line 738
    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mPressedCol:I

    .line 740
    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    if-ne v1, v3, :cond_1

    move v1, v3

    .line 755
    goto :goto_0

    .line 759
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 760
    goto :goto_0

    .line 772
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    iget-object v8, p0, Lcom/sec/android/app/cradle/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 522
    .local v8, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 523
    iput v3, v8, Landroid/text/format/Time;->monthDay:I

    .line 524
    iput v2, v8, Landroid/text/format/Time;->hour:I

    .line 525
    iput v2, v8, Landroid/text/format/Time;->minute:I

    .line 526
    iput v2, v8, Landroid/text/format/Time;->second:I

    .line 527
    invoke-virtual {v8, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 528
    .local v6, millis:J
    iget-wide v2, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 536
    .local v1, startDay:I
    const-wide/16 v9, 0x0

    .line 538
    .local v9, startMillis:J
    const-string v0, "MonthView"

    const-string v2, "reloadEvent2"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/sec/android/app/cradle/MonthView;->mRawBusyBits:[I

    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mAllDayCounts:[I

    new-instance v5, Lcom/sec/android/app/cradle/MonthView$3;

    invoke-direct {v5, p0, v9, v10}, Lcom/sec/android/app/cradle/MonthView$3;-><init>(Lcom/sec/android/app/cradle/MonthView;J)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/cradle/EventLoader;->loadBusyBitsInBackground(II[I[ILjava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method reloadEvents2()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 557
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 558
    .local v7, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 559
    iput v5, v7, Landroid/text/format/Time;->monthDay:I

    .line 560
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 561
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 562
    iput v1, v7, Landroid/text/format/Time;->second:I

    .line 563
    invoke-virtual {v7, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 564
    .local v3, millis:J
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/MonthView;->mNumDays:I

    .line 566
    const-string v0, "MonthView"

    const-string v1, "reloadEvent2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mNumDays:I

    new-instance v5, Lcom/sec/android/app/cradle/MonthView$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/cradle/MonthView$4;-><init>(Lcom/sec/android/app/cradle/MonthView;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/cradle/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 581
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 1622
    const-string v2, "selection_mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1623
    const-string v2, "selected_row"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedRow:I

    .line 1624
    const-string v2, "selected_col"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedCol:I

    .line 1625
    const-string v2, "start_selected_row"

    iget v3, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedRow:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1626
    .local v1, row:I
    const-string v2, "start_selected_col"

    iget v3, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedCol:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1627
    .local v0, col:I
    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 1628
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1614
    const-string v0, "selection_mode"

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1615
    const-string v0, "selected_row"

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedRow:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1616
    const-string v0, "selected_col"

    iget v1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectedCol:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1617
    const-string v0, "start_selected_row"

    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1618
    const-string v0, "start_selected_col"

    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1619
    return-void
.end method

.method public setDayMode(Z)V
    .locals 5
    .parameter "daymode"

    .prologue
    const v4, 0x7f050020

    const v3, 0x7f05001f

    const/4 v2, 0x1

    .line 260
    sput-boolean p1, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, res:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/sec/android/app/cradle/MonthView;->mDayMode:Z

    if-ne v1, v2, :cond_0

    .line 263
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthTodayNumberColor:I

    .line 264
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSelectedColor:I

    .line 270
    :goto_0
    sput-boolean v2, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->requestFocus()Z

    .line 273
    return-void

    .line 267
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthTodayNumberColor:I

    .line 268
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthSelectedColor:I

    goto :goto_0
.end method

.method public setRedrawScreen()V
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1632
    return-void
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .locals 10
    .parameter "time"

    .prologue
    const/4 v9, 0x1

    .line 1174
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1176
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1177
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v9, v4, Landroid/text/format/Time;->monthDay:I

    .line 1178
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1179
    .local v2, millis:J
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mFirstJulianDay:I

    .line 1180
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1184
    new-instance v4, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    iget v5, p1, Landroid/text/format/Time;->year:I

    iget v6, p1, Landroid/text/format/Time;->month:I

    iget v7, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getStartDay()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    .line 1186
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_2

    move v0, v9

    .line 1189
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1190
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    .line 1191
    .local v1, maxDay:I
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    .line 1192
    iget v4, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 1193
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->MONTH_ROW_NUM:I

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mResources:Landroid/content/res/Resources;

    .line 1195
    iget-object v4, p0, Lcom/sec/android/app/cradle/MonthView;->mCursor:Lcom/sec/android/app/cradle/TwDayOfMonthCursor;

    new-instance v5, Lcom/sec/android/app/cradle/MonthView$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/MonthView$5;-><init>(Lcom/sec/android/app/cradle/MonthView;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 1203
    .end local v1           #maxDay:I
    :cond_1
    iput v9, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1206
    const/16 v4, 0xf0

    iput v4, p0, Lcom/sec/android/app/cradle/MonthView;->mMonthHeight:I

    .line 1208
    sput-boolean v9, Lcom/sec/android/app/cradle/MonthView;->mRedrawScreen:Z

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 1210
    return-void

    .line 1188
    .end local v0           #isPortrait:Z
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public setSelectionMode(I)V
    .locals 0
    .parameter "selectionMode"

    .prologue
    .line 1300
    iput p1, p0, Lcom/sec/android/app/cradle/MonthView;->mSelectionMode:I

    .line 1301
    return-void
.end method

.method public showQuickAddDialog()V
    .locals 0

    .prologue
    .line 778
    return-void
.end method
