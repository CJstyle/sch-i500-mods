.class public Lcom/android/music/list/data/MpListDataController;
.super Ljava/lang/Object;
.source "MpListDataController.java"


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static InitContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    sget-object v0, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 21
    sput-object p0, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    .line 22
    :cond_0
    return-void
.end method

.method public static getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;
    .locals 8
    .parameter "_id"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x12

    const/16 v5, 0x11

    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, temp:Lcom/android/music/list/data/MpListDisplayData;
    packed-switch p0, :pswitch_data_0

    .line 420
    :goto_0
    :pswitch_0
    return-object v0

    .line 30
    :pswitch_1
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 31
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 32
    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 34
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 36
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 49
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 51
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 66
    :pswitch_3
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 67
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 69
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 83
    :pswitch_4
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 84
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 86
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 93
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 100
    :pswitch_5
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 101
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 103
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 117
    :pswitch_6
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 118
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 120
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 123
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_7
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 139
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Albums Tracklist"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 141
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 143
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 146
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 155
    :pswitch_8
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 156
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Artist Tracklist"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 157
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 158
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 160
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 165
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 172
    :pswitch_9
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 173
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Genres Tracklist"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 175
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 177
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 181
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 182
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 189
    :pswitch_a
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 190
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Composers Tracklist"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 192
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 194
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 202
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 209
    :pswitch_b
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 210
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Years Tracklist"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 212
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 214
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 218
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 219
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 246
    :pswitch_c
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 247
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 248
    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 250
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 256
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 263
    :pswitch_d
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 264
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 265
    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 266
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 267
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 273
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 280
    :pswitch_e
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 281
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 282
    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 283
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 284
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 286
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 290
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 297
    :pswitch_f
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 298
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 299
    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 300
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 301
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 306
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 307
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 314
    :pswitch_10
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 315
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 316
    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 317
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 318
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 322
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 323
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 324
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 351
    :pswitch_11
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 352
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    sget-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 353
    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setPicture(I)V

    .line 354
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 355
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 356
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 358
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 359
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 360
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->addOptionMenu(Ljava/lang/Integer;)V

    .line 363
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    goto/16 :goto_0

    .line 369
    :pswitch_12
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 370
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Create Play lists"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v4}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 372
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 378
    :pswitch_13
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 379
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Create Play lists"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 381
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 387
    :pswitch_14
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 388
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    const-string v1, "Create Play lists"

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuName(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v4}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 390
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 395
    :pswitch_15
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 396
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-virtual {v0, v7}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 403
    :pswitch_16
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 404
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 405
    invoke-virtual {v0, v4}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 411
    :pswitch_17
    new-instance v0, Lcom/android/music/list/data/MpListDisplayData;

    .end local v0           #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-direct {v0}, Lcom/android/music/list/data/MpListDisplayData;-><init>()V

    .line 412
    .restart local v0       #temp:Lcom/android/music/list/data/MpListDisplayData;
    invoke-virtual {v0, v3}, Lcom/android/music/list/data/MpListDisplayData;->setItemLayout(I)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
