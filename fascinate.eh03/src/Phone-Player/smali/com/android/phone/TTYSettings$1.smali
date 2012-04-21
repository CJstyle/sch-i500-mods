.class Lcom/android/phone/TTYSettings$1;
.super Ljava/lang/Object;
.source "TTYSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TTYSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TTYSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/TTYSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v2}, Lcom/android/phone/TTYSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v1, Lcom/android/phone/TTYSettingsUtil;

    iget-object v2, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v2}, Lcom/android/phone/TTYSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v3}, Lcom/android/phone/TTYSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/phone/TTYSettingsUtil;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 43
    .local v1, util:Lcom/android/phone/TTYSettingsUtil;
    invoke-virtual {v1}, Lcom/android/phone/TTYSettingsUtil;->init()V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, ttymode:I
    packed-switch p3, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/phone/TTYSettingsUtil;->handleTTYClickRequest(I)V

    .line 62
    iget-object v2, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v2}, Lcom/android/phone/TTYSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESULT"

    invoke-static {v0}, Lcom/android/phone/TTYSettingsUtil;->getTTYString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v4}, Lcom/android/phone/TTYSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/TTYSettings;->setResult(ILandroid/content/Intent;)V

    .line 64
    iget-object v2, p0, Lcom/android/phone/TTYSettings$1;->this$0:Lcom/android/phone/TTYSettings;

    invoke-virtual {v2}, Lcom/android/phone/TTYSettings;->finish()V

    goto :goto_0

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .line 48
    goto :goto_1

    .line 50
    :pswitch_1
    const/4 v0, 0x2

    .line 51
    goto :goto_1

    .line 53
    :pswitch_2
    const/4 v0, 0x3

    .line 54
    goto :goto_1

    .line 56
    :pswitch_3
    const/4 v0, 0x1

    .line 57
    goto :goto_1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
