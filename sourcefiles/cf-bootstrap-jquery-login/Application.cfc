 component {
    this.name = "MyColdFusionApp";
    this.sessionManagement = true;
    this.sessionTimeout = createTimespan(0,0,30,0); // 30 minutes
    this.applicationTimeout = createTimeSpan(1, 0, 0, 0); // 1 day
}