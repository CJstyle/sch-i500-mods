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
    .line 607
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.CONTACT_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 583
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 584
    .local v7, intent_action:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 585
    .local v9, lookupUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, dataString:Ljava/lang/String;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 587
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 588
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 589
    .local v5, filtered:Z
    const/4 v2, 0x0

    .line 591
    .local v2, customIcon:Z
    if-eqz v1, :cond_0

    instance-of v10, v1, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    .line 592
    new-instance v10, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v10, v1}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v10, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v8, intent_table_bstr:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, dataString1:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v10, "#Intent;action="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v10, ";launchFlags=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v10, ";i.mode=3;end"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v6}, Lcom/sec/android/app/twlauncher/Launcher$2;->updateIconInDatabase(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 604
    .end local v2           #customIcon:Z
    .end local v3           #dataString:Ljava/lang/String;
    .end local v4           #dataString1:Ljava/lang/String;
    .end local v5           #filtered:Z
    .end local v6           #icon:Landroid/graphics/Bitmap;
    .end local v7           #intent_action:Landroid/content/Intent;
    .end local v8           #intent_table_bstr:Ljava/lang/StringBuilder;
    .end local v9           #lookupUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public updateIconInDatabase(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "context"
    .parameter "shortcutIntent"
    .parameter "bitmap"

    .prologue
    .line 608
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 609
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 611
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v3, p3}, Lcom/sec/android/app/twlauncher/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 612
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 613
    .local v2, selectionArgs:[Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "intent=?"

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 617
    .local v0, Result:I
    return-void
.end method
