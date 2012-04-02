.class public Lcom/sec/android/app/cradle/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;,
        Lcom/sec/android/app/cradle/DigitalClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/sec/android/app/cradle/DigitalClock$AmPm;

.field private mAttached:Z

.field private mBigNumbers_night:[I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour1:Landroid/view/View;

.field private mHour2:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mMin1:Landroid/view/View;

.field private mMin2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/cradle/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mLive:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/sec/android/app/cradle/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/DigitalClock$1;-><init>(Lcom/sec/android/app/cradle/DigitalClock;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mBigNumbers_night:[I

    .line 119
    return-void

    .line 218
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

.method static synthetic access$000(Lcom/sec/android/app/cradle/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/cradle/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/cradle/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/cradle/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    const-string v3, "hhmm"

    .line 205
    const-string v0, "hhmm"

    iput-object v3, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormat:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAmPm:Lcom/sec/android/app/cradle/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "hhmm"

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 188
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    .local v0, newTime:Ljava/lang/CharSequence;
    const-string v1, "DIGITALCLOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHour1:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHour2:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mMin1:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mMin2:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAmPm:Lcom/sec/android/app/cradle/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sec/android/app/cradle/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 202
    return-void

    :cond_1
    move v2, v6

    .line 201
    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 147
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAttached:Z

    .line 150
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/cradle/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;-><init>(Lcom/sec/android/app/cradle/DigitalClock;)V

    iput-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/cradle/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 171
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAttached:Z

    .line 174
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 129
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHour1:Landroid/view/View;

    .line 130
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mHour2:Landroid/view/View;

    .line 131
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mMin1:Landroid/view/View;

    .line 132
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mMin2:Landroid/view/View;

    .line 135
    new-instance v0, Lcom/sec/android/app/cradle/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mAmPm:Lcom/sec/android/app/cradle/DigitalClock$AmPm;

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/cradle/DigitalClock;->setDateFormat()V

    .line 139
    return-void
.end method
