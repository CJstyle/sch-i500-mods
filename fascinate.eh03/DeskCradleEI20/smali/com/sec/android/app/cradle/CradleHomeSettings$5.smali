.class Lcom/sec/android/app/cradle/CradleHomeSettings$5;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 439
    packed-switch p2, :pswitch_data_0

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->removeDialog(I)V

    .line 475
    return-void

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 447
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string v1, "cradle_wallpaper_changed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 456
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$200(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Intent;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 464
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const-class v2, Lcom/sec/android/app/cradle/CradleWallpaperChooser;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
