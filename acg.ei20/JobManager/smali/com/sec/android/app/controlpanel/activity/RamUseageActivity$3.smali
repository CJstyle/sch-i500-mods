.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 11
    .parameter "o"

    .prologue
    .line 106
    instance-of v8, p1, Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-eqz v8, :cond_0

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-object v3, v0

    .line 108
    .local v3, m:Lcom/sec/android/app/controlpanel/MemoryInfo;
    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getAvailMem()J

    move-result-wide v1

    .line 109
    .local v1, avail:J
    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getTotalMemory()J

    move-result-wide v4

    .line 110
    .local v4, total:J
    sub-long v6, v4, v1

    .line 111
    .local v6, used:J
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v8, v8, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryAvailable:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v8, v8, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemGraph:Landroid/widget/ProgressBar;

    const-wide/16 v9, 0x64

    mul-long/2addr v9, v6

    div-long/2addr v9, v4

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 115
    .end local v1           #avail:J
    .end local v3           #m:Lcom/sec/android/app/controlpanel/MemoryInfo;
    .end local v4           #total:J
    .end local v6           #used:J
    :cond_0
    return-void
.end method
