.class public Lcom/android/mms/util/TFResourceMitigate;
.super Ljava/lang/Object;
.source "TFResourceMitigate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v0, "TFResourceMitigate"

    const-string v1, "init() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v0, 0x101006a

    invoke-static {v2, v0}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 93
    const v0, 0x1010070

    invoke-static {v3, v0}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 97
    const v0, 0x1010074

    invoke-static {v5, v0}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 101
    const v0, 0x1010080

    invoke-static {v6, v0}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 105
    const/4 v0, 0x5

    const v1, 0x1080062

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 109
    const/4 v0, 0x6

    const v1, 0x1090041

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 113
    const/4 v0, 0x7

    const v1, 0x1090003

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 117
    const/16 v0, 0x8

    const v1, 0x1090009

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 121
    const/16 v0, 0x9

    const v1, 0x1090008

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 125
    const/16 v0, 0xa

    const v1, 0x1090071

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 129
    const/16 v0, 0xb

    const v1, 0x1030071

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 133
    const/16 v0, 0xc

    const v1, 0x1030072

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 137
    const/16 v0, 0x100

    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setIntArr(I[I)V

    .line 141
    const/16 v0, 0xd

    invoke-static {v0, v3}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 145
    const/16 v0, 0xe

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 149
    const/16 v0, 0x101

    sget-object v1, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setIntArr(I[I)V

    .line 153
    const/16 v0, 0xf

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 157
    const/16 v0, 0x102

    sget-object v1, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setIntArr(I[I)V

    .line 161
    const/16 v0, 0x10

    invoke-static {v0, v3}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 165
    const/16 v0, 0x11

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 169
    const/16 v0, 0x12

    invoke-static {v0, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 173
    const/16 v0, 0x13

    invoke-static {v0, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 177
    const/16 v0, 0x104

    sget-object v1, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setIntArr(I[I)V

    .line 181
    const/16 v0, 0x1a

    invoke-static {v0, v3}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 185
    const/16 v0, 0x1b

    invoke-static {v0, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 189
    const/16 v0, 0x1c

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 193
    const/16 v0, 0x1d

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 197
    const/16 v0, 0x1e

    invoke-static {v0, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 201
    const/16 v0, 0x105

    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setIntArr(I[I)V

    .line 205
    const/16 v0, 0x1f

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 208
    const/16 v0, 0x20

    const v1, 0x1080257

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 209
    const/16 v0, 0x21

    const v1, 0x1080258

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->setInt(II)V

    .line 210
    return-void
.end method
