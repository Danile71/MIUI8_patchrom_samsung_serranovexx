.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 83
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->mUseLocalPb:Z

    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v1, "3F007FFF5F3A"

    return-object v1

    .line 66
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    .line 70
    :sswitch_1
    const-string/jumbo v1, "3F007F20"

    return-object v1

    .line 72
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->mUseLocalPb:Z

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "3F007FFF5F3A"

    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 86
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 89
    :cond_2
    return-object v0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_2
        0x6f05 -> :sswitch_0
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f30 -> :sswitch_1
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f3f -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
