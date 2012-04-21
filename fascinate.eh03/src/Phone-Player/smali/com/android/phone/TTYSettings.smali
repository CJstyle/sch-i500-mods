.class public Lcom/android/phone/TTYSettings;
.super Landroid/app/ListActivity;
.source "TTYSettings.java"


# instance fields
.field private items:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/TTYSettings;->items:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "ITEM"

    .line 23
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/phone/TTYSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/TTYSettings;->items:[Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/android/phone/TTYSettings;->items:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26
    const-string v1, "TTYSettings"

    const-string v2, "Empty Items List"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/android/phone/TTYSettings;->finish()V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/TTYSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/phone/TTYSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/TTYSettings$1;-><init>(Lcom/android/phone/TTYSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void

    .line 29
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-virtual {p0}, Lcom/android/phone/TTYSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ITEM"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 32
    .local v0, arrayAdap:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/android/phone/TTYSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, settingsTtyMode:I
    const/4 v0, 0x0

    .line 78
    .local v0, position:I
    packed-switch v1, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/TTYSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 95
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    .line 81
    goto :goto_0

    .line 83
    :pswitch_1
    const/4 v0, 0x3

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v0, 0x2

    .line 90
    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
