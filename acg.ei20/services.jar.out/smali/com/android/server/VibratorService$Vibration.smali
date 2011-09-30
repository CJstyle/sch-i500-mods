.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private mMagnitude:I

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JI)V
    .locals 8
    .parameter
    .parameter "token"
    .parameter "millis"
    .parameter "uid"

    .prologue
    .line 101
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V
    .locals 2
    .parameter
    .parameter "token"
    .parameter "millis"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "uid"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 117
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 118
    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 120
    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 121
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 122
    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 123
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JII)V
    .locals 8
    .parameter
    .parameter "token"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "uid"

    .prologue
    .line 104
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    .locals 8
    .parameter
    .parameter "token"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "uid"
    .parameter "magnitude"

    .prologue
    .line 108
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V

    .line 109
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 110
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService$Vibration;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 132
    :cond_0
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 5
    .parameter "millis"

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v4

    .line 147
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v0, v4

    .line 145
    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
