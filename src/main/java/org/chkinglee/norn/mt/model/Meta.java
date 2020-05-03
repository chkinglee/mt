package org.chkinglee.norn.mt.model;

/**
 * TODO
 *
 * @Author: lilinzhen
 * @Version: 2020/5/3
 **/
public class Meta {

    private Boolean keepAlive;
    private Boolean requireAuth;
    private Boolean enabled;
    private Boolean undeletable;

    public Boolean getKeepAlive() {
        return keepAlive;
    }

    public void setKeepAlive(Boolean keepAlive) {
        this.keepAlive = keepAlive;
    }

    public Boolean getRequireAuth() {
        return requireAuth;
    }

    public void setRequireAuth(Boolean requireAuth) {
        this.requireAuth = requireAuth;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public Boolean getUndeletable() {
        return undeletable;
    }

    public void setUndeletable(Boolean undeletable) {
        this.undeletable = undeletable;
    }
}
