.class Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 274
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$000(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 276
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 279
    iput-boolean p2, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->succeeded:Z

    .line 280
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 282
    return-void
.end method
