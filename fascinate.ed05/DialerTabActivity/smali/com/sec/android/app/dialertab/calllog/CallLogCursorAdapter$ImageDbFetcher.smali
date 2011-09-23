.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDbFetcher"
.end annotation


# instance fields
.field mContactId:Ljava/lang/Integer;

.field private mImageView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "contactId"
    .parameter "imageView"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mContactId:Ljava/lang/Integer;

    .line 1213
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mImageView:Landroid/view/View;

    .line 1214
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1217
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v0, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mContactId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1227
    const/4 v11, 0x0

    .line 1228
    .local v11, photo:Landroid/graphics/Bitmap;
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {v13, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V

    .line 1229
    .local v13, pi:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mContactId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1230
    .local v1, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1231
    .local v6, buffer:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mContactId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1236
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->CONTACT_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1238
    .local v7, contactCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1239
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1240
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1242
    const-string v2, "photo_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1243
    .local v8, idx:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1244
    .local v12, photoId:I
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1246
    .local v9, lookupkey:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, v12

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1249
    iput-object v9, v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->LookupKey:Ljava/lang/String;

    .line 1252
    iput v12, v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->photoId:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v8           #idx:I
    .end local v9           #lookupkey:Ljava/lang/String;
    .end local v12           #photoId:I
    :cond_2
    :goto_1
    if-nez v11, :cond_4

    .line 1261
    const/4 v2, 0x0

    iput-object v2, v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    .line 1265
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mContactId:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #buffer:Ljava/lang/StringBuffer;
    .end local v7           #contactCursor:Landroid/database/Cursor;
    .end local v11           #photo:Landroid/graphics/Bitmap;
    .end local v13           #pi:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 1274
    .local v10, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v10, Landroid/os/Message;->what:I

    .line 1275
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->mImageView:Landroid/view/View;

    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1276
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1263
    .end local v10           #msg:Landroid/os/Message;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #buffer:Ljava/lang/StringBuffer;
    .restart local v7       #contactCursor:Landroid/database/Cursor;
    .restart local v11       #photo:Landroid/graphics/Bitmap;
    .restart local v13       #pi:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    :cond_4
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v11}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 1256
    :catch_0
    move-exception v2

    goto :goto_1
.end method
