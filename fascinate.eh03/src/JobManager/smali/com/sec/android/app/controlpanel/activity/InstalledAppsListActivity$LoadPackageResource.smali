.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
.super Landroid/os/AsyncTask;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadPackageResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field running:Z

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    .line 257
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    .line 258
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const-string v8, "InstalledAppsListActivity"

    .line 262
    const-wide/16 v2, 0x0

    .line 263
    .local v2, minCheck:J
    const-string v6, "InstalledAppsListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 265
    .local v1, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 266
    .local v4, temp:J
    iget-boolean v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    if-nez v6, :cond_1

    .line 276
    .end local v1           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v4           #temp:J
    :cond_0
    const-string v6, "InstalledAppsListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v6, 0x0

    return-object v6

    .line 267
    .restart local v1       #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .restart local v4       #temp:J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadIcon(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 268
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 269
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadSize(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 270
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 271
    const-wide/16 v2, 0x0

    .line 272
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->publishProgress([Ljava/lang/Object;)V

    .line 274
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "InstalledAppsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    .line 284
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 285
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->saveCache()V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->writeLocaleConfig(Landroid/content/Context;)V

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    return-void
.end method
