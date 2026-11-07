.class public Lcom/meituan/robust/PatchProxy;
.super Ljava/lang/Object;
.source "PatchProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p5, 0x0

    if-nez p2, :cond_0

    return-object p5

    .line 70
    :cond_0
    invoke-static {p3, p4}, Lcom/meituan/robust/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    return-object p5

    .line 74
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/meituan/robust/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 75
    invoke-interface {p2, p4, p0}, Lcom/meituan/robust/ChangeQuickRedirect;->accessDispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static accessDispatchVoid([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {p3, p4}, Lcom/meituan/robust/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 83
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/meituan/robust/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 87
    invoke-interface {p2, p4, p0}, Lcom/meituan/robust/ChangeQuickRedirect;->accessDispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getClassMethod(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    const-string v1, ""

    .line 121
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private static getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    array-length v0, p0

    if-eqz p2, :cond_1

    .line 98
    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 104
    aget-object v3, p0, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 107
    aput-object p1, v1, v2

    :cond_3
    return-object v1
.end method

.method public static isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    const/4 p5, 0x0

    if-nez p2, :cond_0

    return p5

    .line 52
    :cond_0
    invoke-static {p3, p4}, Lcom/meituan/robust/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    return p5

    .line 56
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/meituan/robust/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 58
    :try_start_0
    invoke-interface {p2, p4, p0}, Lcom/meituan/robust/ChangeQuickRedirect;->isSupport(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p5
.end method

.method public static proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/meituan/robust/PatchProxyResult;

    invoke-direct {v0}, Lcom/meituan/robust/PatchProxyResult;-><init>()V

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lcom/meituan/robust/PatchProxyResult;->isSupported:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 41
    invoke-static/range {v2 .. v8}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
