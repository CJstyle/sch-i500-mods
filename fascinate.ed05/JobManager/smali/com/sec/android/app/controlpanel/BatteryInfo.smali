.class public Lcom/sec/android/app/controlpanel/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/BatteryInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHealth:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:I

.field mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugType:I

.field private mStatus:I

.field private mVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    .line 122
    new-instance v0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/BatteryInfo$1;-><init>(Lcom/sec/android/app/controlpanel/BatteryInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mPlugType:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mVoltage:I

    return p1
.end method

.method static destory()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->unregisterReceiver()V

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    .line 63
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/BatteryInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    sget-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/BatteryInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    .line 34
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/BatteryInfo;->instance:Lcom/sec/android/app/controlpanel/BatteryInfo;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getHealthString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, healthString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 77
    .end local v0           #healthString:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #healthString:Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v0           #healthString:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #healthString:Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0           #healthString:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #healthString:Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0           #healthString:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #healthString:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0           #healthString:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #healthString:Ljava/lang/String;
    goto :goto_0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mLevel:I

    return v0
.end method

.method public getPlugTypeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mPlugType:I

    if-gtz v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mPlugType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f060062

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f060063

    goto :goto_1
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, statusString:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mPlugType:I

    if-lez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getPlugTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 109
    .end local v0           #statusString:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #statusString:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 112
    const-string v0, ""

    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0           #statusString:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0           #statusString:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0
.end method

.method public getVoltage()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mVoltage:I

    return v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 178
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 180
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->registerReceiver()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->unregisterReceiver()V

    goto :goto_0
.end method
