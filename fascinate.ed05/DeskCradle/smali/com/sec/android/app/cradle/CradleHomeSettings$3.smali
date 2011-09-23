.class Lcom/sec/android/app/cradle/CradleHomeSettings$3;
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
    .line 402
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 403
    packed-switch p2, :pswitch_data_0

    .line 437
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings;->removeDialog(I)V

    .line 438
    return-void

    .line 406
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 407
    .local v3, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 410
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cradle_wallpaper_type"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 419
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v4, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$200(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Intent;)V

    .line 423
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v5, 0x5

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 427
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v2, intent2:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const-class v5, Lcom/sec/android/app/cradle/CradleWallpaperChooser;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 429
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
