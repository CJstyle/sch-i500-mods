.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 12
    .parameter "o"

    .prologue
    .line 315
    instance-of v8, p1, Lcom/sec/android/app/controlpanel/StorageInfo;

    if-eqz v8, :cond_0

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    move-object v3, v0

    .line 317
    .local v3, c:Lcom/sec/android/app/controlpanel/StorageInfo;
    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/StorageInfo;->getAvailableSizeOfData()J

    move-result-wide v1

    .line 318
    .local v1, availData:J
    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfData()J

    move-result-wide v4

    .line 319
    .local v4, totalData:J
    sub-long v6, v4, v1

    .line 321
    .local v6, usedData:J
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v8}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    const v11, 0x7f06000d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .end local v1           #availData:J
    .end local v3           #c:Lcom/sec/android/app/controlpanel/StorageInfo;
    .end local v4           #totalData:J
    .end local v6           #usedData:J
    :cond_0
    return-void
.end method
