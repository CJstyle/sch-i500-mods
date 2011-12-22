.class Lcom/sec/android/app/cradle/CradleWeatherSettings$1;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.infoalarm"

    const-string v2, "com.sec.android.widgetapp.infoalarm.activity.settings.SettingsWeatherSub"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 116
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->selectAutoRefresh()V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->selectUnit()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
