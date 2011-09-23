.class Lcom/sec/android/app/controlpanel/PackageInfo$1;
.super Landroid/os/Handler;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 414
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 416
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 417
    .local v2, data:Landroid/os/Bundle;
    const-string v11, "ps"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, pkgList:[Ljava/lang/String;
    const-string v11, "cs"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 419
    .local v1, codeSizes:[J
    const-string v11, "cfs"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, codeSizeFormatted:[Ljava/lang/String;
    const-string v11, "ds"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 421
    .local v4, dataSizes:[J
    const-string v11, "dfs"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, dataSizeFormatted:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v11, v9

    if-ge v5, v11, :cond_0

    .line 424
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-static {v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$900(Lcom/sec/android/app/controlpanel/PackageInfo;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v12, v9, v5

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 425
    .local v8, pi:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-nez v8, :cond_1

    .line 423
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 428
    :cond_1
    aget-wide v11, v1, v5

    invoke-virtual {v8, v11, v12}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSizeFormatted(J)V

    .line 429
    aget-object v11, v0, v5

    invoke-virtual {v8, v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSizeFormatted(Ljava/lang/String;)V

    .line 430
    aget-wide v11, v4, v5

    invoke-virtual {v8, v11, v12}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSize(J)V

    .line 431
    aget-object v11, v3, v5

    invoke-virtual {v8, v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSizeFormatted(Ljava/lang/String;)V

    .line 433
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    goto :goto_2

    .line 439
    .end local v0           #codeSizeFormatted:[Ljava/lang/String;
    .end local v1           #codeSizes:[J
    .end local v2           #data:Landroid/os/Bundle;
    .end local v3           #dataSizeFormatted:[Ljava/lang/String;
    .end local v4           #dataSizes:[J
    .end local v5           #i:I
    .end local v8           #pi:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v9           #pkgList:[Ljava/lang/String;
    :pswitch_2
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->refresh()V

    goto :goto_0

    .line 442
    :pswitch_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v10, pkgListToCalc:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-static {v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 444
    .local v7, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v7}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSizeComputed()Z

    move-result v11

    if-nez v11, :cond_2

    .line 445
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 448
    .end local v7           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    new-instance v12, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    iget-object v13, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {v12, v13, v10}, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;Ljava/util/List;)V

    invoke-static {v11, v12}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$1002(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;)Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    .line 449
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-static {v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$1000(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->setPriority(I)V

    .line 450
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/PackageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-static {v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$1000(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->start()V

    goto/16 :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
