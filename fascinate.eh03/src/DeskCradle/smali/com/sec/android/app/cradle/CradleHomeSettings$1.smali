.class Lcom/sec/android/app/cradle/CradleHomeSettings$1;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ed:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->ed:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 115
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectWallpaperDialog()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectDisplayClock()V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectAccuWeather()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
