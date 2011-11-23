.class Lcom/sec/android/app/twlauncher/Launcher$2;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method getShortcutIdByIntentAction(Landroid/content/ContentResolver;Landroid/content/Intent;)J
    .locals 17
    .parameter "cr"
    .parameter "intentAction"

    .prologue
    .line 618
    const-wide/16 v13, -0x1

    .line 620
    .local v13, ret:J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 622
    .local v12, requiredUri:Landroid/net/Uri;
    if-nez v12, :cond_0

    move-wide v15, v13

    .line 641
    .end local v13           #ret:J
    .local v15, ret:J
    :goto_0
    return-wide v15

    .line 625
    .end local v15           #ret:J
    .restart local v13       #ret:J
    :cond_0
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "intent"

    aput-object v5, v4, v2

    const-string v5, "intent like \"content://com.android.contacts/contacts%\""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 628
    .local v8, c:Landroid/database/Cursor;
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 629
    .local v11, intentIndex:I
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 631
    .local v10, idIndex:I
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 633
    .local v9, contactUri:Landroid/net/Uri;
    invoke-virtual {v12, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 639
    .end local v9           #contactUri:Landroid/net/Uri;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide v15, v13

    .line 641
    .end local v13           #ret:J
    .restart local v15       #ret:J
    goto :goto_0

    .line 639
    .end local v15           #ret:J
    .restart local v13       #ret:J
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 597
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 598
    .local v4, intent_action:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 600
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/twlauncher/Launcher$2;->getShortcutIdByIntentAction(Landroid/content/ContentResolver;Landroid/content/Intent;)J

    move-result-wide v6

    .line 601
    .local v6, shortcutId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    .line 602
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, name:Ljava/lang/String;
    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 604
    .local v3, iconData:Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 605
    .local v2, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    instance-of v8, v3, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 606
    new-instance v8, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    check-cast v3, Landroid/graphics/Bitmap;

    .end local v3           #iconData:Landroid/os/Parcelable;
    invoke-direct {v8, v3}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v8, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 608
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 609
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 610
    const-string v8, "title"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v8, "intent"

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    sget-object v8, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 615
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method
