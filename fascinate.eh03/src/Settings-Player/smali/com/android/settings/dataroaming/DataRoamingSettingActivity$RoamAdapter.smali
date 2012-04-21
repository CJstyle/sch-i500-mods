.class Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataRoamingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataroaming/DataRoamingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 143
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    iget-object v0, v0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    iget-object v0, v0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001a

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 170
    .local v4, view:Landroid/widget/RelativeLayout;
    :goto_0
    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 171
    .local v3, text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    iget-object v5, v5, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v5, 0x7f0b0037

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 175
    .local v2, radio:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    #getter for: Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I
    invoke-static {v5}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->access$000(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    iget-object v6, v6, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entryValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    move v1, v5

    .line 176
    .local v1, checked:Z
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    return-object v4

    .line 167
    .end local v1           #checked:Z
    .end local v2           #radio:Landroid/widget/RadioButton;
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/widget/RelativeLayout;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v4, v0

    .restart local v4       #view:Landroid/widget/RelativeLayout;
    goto :goto_0

    .restart local v2       #radio:Landroid/widget/RadioButton;
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_1
    move v1, v7

    .line 175
    goto :goto_1
.end method
