.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;
.super Landroid/os/Handler;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFetchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public clearImageFecthing()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->removeMessages(I)V

    .line 1335
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const v11, 0x7f06002e

    .line 1284
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v10, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 1289
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1291
    .local v4, itemView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1294
    const v10, 0x7f060030

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    .line 1295
    .local v7, photoQView:Landroid/widget/QuickContactBadge;
    invoke-virtual {v4, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;

    .line 1296
    .local v3, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
    if-eqz v3, :cond_0

    .line 1300
    iget-object v0, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;->contactId:Ljava/lang/Integer;

    .line 1301
    .local v0, contactId:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1305
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;

    .line 1306
    .local v8, photoRef:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    if-eqz v8, :cond_0

    .line 1309
    const/4 v6, 0x1

    .line 1310
    .local v6, photoExist:Z
    const/4 v5, 0x0

    .line 1311
    .local v5, photo:Landroid/graphics/Bitmap;
    iget-object v10, v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    if-eqz v10, :cond_2

    .line 1312
    iget-object v10, v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #photo:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .line 1317
    .restart local v5       #photo:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v4, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;

    .line 1318
    .local v9, updatedInfo:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
    iget-object v10, v9, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;->contactId:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v1, v10

    .line 1319
    .local v1, currentContactId:J
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    .line 1320
    if-eqz v6, :cond_3

    .line 1321
    invoke-virtual {v7, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1325
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->LookupKey:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1326
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$700(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1314
    .end local v1           #currentContactId:J
    .end local v9           #updatedInfo:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1323
    .restart local v1       #currentContactId:J
    .restart local v9       #updatedInfo:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
    :cond_3
    const v10, 0x7f02009d

    invoke-virtual {v7, v10}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_2

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
