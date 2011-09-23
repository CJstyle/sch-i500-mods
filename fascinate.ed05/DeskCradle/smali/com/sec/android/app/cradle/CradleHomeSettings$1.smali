.class Lcom/sec/android/app/cradle/CradleHomeSettings$1;
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
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 321
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 324
    .local v1, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_current_clock"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    packed-switch p2, :pswitch_data_0

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->removeDialog(I)V

    .line 345
    return-void

    .line 331
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
