.class public Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;
.super Ljava/lang/Object;
.source "PermissionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x1

.field public static final KEY_ALLOW_CLOSE:Ljava/lang/String; = "key_allow_close"

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "key_permissions"

.field public static final KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field private static final MAX_REQUEST_CODE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "PermissionController"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static sIncRequestCode:I

.field private static sListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sListenerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "4eb8bff3f5b4e140d93954c5157c30dc"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_f

    .line 102
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    if-nez p0, :cond_2

    return-void

    .line 109
    :cond_2
    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->handlePermissionRequest([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 113
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    array-length v3, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, p1, v5

    .line 115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 119
    :cond_4
    :try_start_0
    invoke-static {p0, v6}, Lgbsdk/android/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 120
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission, permissions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PermissionController"

    invoke-static {v5, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPermission, unauthorizedPermissions:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    invoke-static {v7}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->shouldShowRequestTips(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 135
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermission, shouldRequestPermissions: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermission, shouldNotRequestPermissions: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 145
    sget p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sIncRequestCode:I

    add-int/2addr p1, v2

    sput p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sIncRequestCode:I

    const/16 v0, 0xff

    if-le p1, v0, :cond_9

    .line 147
    sput v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sIncRequestCode:I

    .line 149
    :cond_9
    new-instance p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;

    invoke-direct {p1, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$1;)V

    .line 150
    iput-object p2, p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->listener:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

    .line 151
    iput-object v6, p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->shouldNotReqPermissions:Ljava/util/ArrayList;

    .line 152
    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sListenerMap:Ljava/util/Map;

    sget v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sIncRequestCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    sget p2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sIncRequestCode:I

    const-string v0, "key_request_code"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_permissions"

    .line 156
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_a
    if-eqz p2, :cond_e

    .line 161
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 162
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_b

    const/4 v2, -0x1

    .line 163
    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :cond_b
    invoke-interface {p2, v1, p1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_e

    .line 171
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 172
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_d

    .line 173
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 175
    :cond_d
    invoke-interface {p2, v2, p1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    :cond_e
    :goto_5
    return-void

    :cond_f
    :goto_6
    new-array p0, v1, [Ljava/lang/String;

    new-array p1, v1, [I

    .line 103
    invoke-interface {p2, v2, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    return-void
.end method

.method public static checkPermissionCompatTarget30(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "eb7ff7aaf7cc31bd1fd6f8021e2fdb4f"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->checkPermissionCompatTarget30(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V

    return-void
.end method

.method public static dispatchPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "2e3cea5ea251ed0aea6bd83169d04a25"

    invoke-static {v0, v4, v2, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_9

    .line 38
    array-length v0, p2

    if-eqz v0, :cond_9

    array-length v0, p3

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_3

    .line 43
    aget v2, p3, v0

    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aget-object v0, p2, v0

    invoke-static {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->showGrantToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->sListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;

    if-nez p0, :cond_4

    return-void

    .line 58
    :cond_4
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->shouldNotReqPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 60
    array-length v0, p2

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    array-length v2, p3

    add-int/2addr v2, p1

    new-array v2, v2, [I

    .line 62
    array-length v4, p2

    invoke-static {p2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->shouldNotReqPermissions:Ljava/util/ArrayList;

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, p2

    invoke-static {v4, v1, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v4, p3

    invoke-static {p3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    array-length v4, p3

    :goto_2
    if-ge v4, p1, :cond_6

    const/4 v5, -0x1

    .line 67
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object v0, p2

    move-object v2, p3

    .line 73
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchPermissionResult, mergedPermissions: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "PermissionController"

    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchPermissionResult, mergedGrantResults: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchPermissionResult, req permissions: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchPermissionResult, req grantResults: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 79
    :goto_3
    array-length p2, v2

    if-ge p1, p2, :cond_8

    .line 80
    aget p2, v2, p1

    if-eqz p2, :cond_7

    .line 82
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->listener:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

    invoke-interface {p1, v1, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_9

    .line 87
    iget-object p0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->listener:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

    invoke-interface {p0, v3, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private static shouldShowRequestTips(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static showGrantToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ad62313c05c833fcf06ba2da39dfdfbb"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.permission.CAMERA"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "string"

    if-eqz v0, :cond_2

    const-string p1, "permission_tips_toast_camera"

    .line 197
    invoke-static {p1, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "permission_tips_toast_storage"

    .line 200
    invoke-static {p1, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
