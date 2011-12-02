.class Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsMenuOnClickListener"
.end annotation


# instance fields
.field private mClickedNumber:I

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V
    .locals 0
    .parameter
    .parameter "_number"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->mClickedNumber:I

    .line 276
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 282
    :try_start_0
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    const/high16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00b8

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$202(Lcom/android/music/common/settings/MusicSettingsEqualizer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0a00b8

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 359
    .local v8, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsMenuOnClickListener:RemoteException occured 34:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$400()I

    move-result v0

    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->mClickedNumber:I

    if-eq v0, v2, :cond_0

    .line 294
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$400()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->mClickedNumber:I

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$402(I)I

    .line 296
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    .line 298
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$400()I

    move-result v2

    aget v9, v0, v2

    .line 301
    .local v9, eq:I
    if-nez v9, :cond_4

    .line 303
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v11

    .line 305
    .local v11, iAudioID:I
    const/4 v10, 0x1

    .line 307
    .local v10, genre:I
    if-gez v11, :cond_5

    .line 309
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SettingsMenuOnClickListener : R2vsUtil.R2VS_MODE_AUTO , iAudioID < 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    :goto_2
    sput v10, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 354
    .end local v10           #genre:I
    .end local v11           #iAudioID:I
    :cond_4
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x0

    aput v9, v0, v2

    .line 355
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    goto/16 :goto_1

    .line 313
    .restart local v10       #genre:I
    .restart local v11       #iAudioID:I
    :cond_5
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v11

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 314
    .local v1, mediaUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 317
    .local v12, strGenre:Ljava/lang/String;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 320
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 324
    :cond_6
    if-eqz v7, :cond_7

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    :goto_3
    if-eqz v12, :cond_3

    .line 347
    :try_start_3
    invoke-static {v12}, Lcom/android/music/common/util/R2vsUtil;->getEqDefined(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    .line 326
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 327
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 331
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 332
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 334
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 335
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 338
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 339
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
