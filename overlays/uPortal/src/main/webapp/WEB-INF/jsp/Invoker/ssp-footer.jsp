<%@ include file="/WEB-INF/jsp/include.jsp" %>

<div id="ssp-footer">
    <script type="text/javascript">
        up.jQuery(document).ready(function() {
            var clickVersionLabel = "Click here for Version Information";
            var platformInfo = "";
            var sspInfo = "";
            var toggle = 0;

            up.jQuery.ajax({
                type: 'get',
                url: '/ssp/api/1/server/version',
                success: function(data) {

                    sspInfo = "<p>" + "SSP Version"
                        + ": " + data.artifactVersion + "   |   "
                        + "SSP BuildDate" + ": "
                        + intToDate(data.buildDate) + "   |   "
                        + "SSP SCM Revision" + ": "
                        + data.scmRevision + " </p>";

                    platformInfo = "<p>"
                        + "uPortal Version"
                        + ": " + data.extensions[0].artifactVersion
                        + " </p>";

                    up.jQuery('#InfoToggle').text(clickVersionLabel);
                },
                error: function() {
                    toggle = -1;
                }
            });

            up.jQuery('#InfoToggle').click(function() {
                    if ( toggle === 0 ) {
                        up.jQuery('#InfoToggle').html(sspInfo + platformInfo);
                        toggle = 1;
                    } else if ( toggle === 1 ) {
                        up.jQuery('#InfoToggle').text(clickVersionLabel);
                        toggle = 0;
                    } else {
                        up.jQuery('#InfoToggle').text("");
                    }
            });
		});

        function intToDate( integerDate ) {

            var dateToOutput = "";

            if ( integerDate ) {
                var dateFromInt = new Date(parseInt(integerDate));

                 if ( !isNaN(dateFromInt) ) {
                    var splitDate = dateFromInt.toString().split(" ");
                    var timeZoneFormatted = splitDate[splitDate.length - 2] + " " + splitDate[splitDate.length - 1];

                    dateToOutput = (('0' + (dateFromInt.getMonth()+1)).slice(-2)) + "/"
                        +(('0' + dateFromInt.getDate()).slice(-2)) +"/"
                        +dateFromInt.getFullYear() +"   "
                        +(('0' + dateFromInt.getHours()).slice(-2)) +":"
                        +(('0' + dateFromInt.getMinutes()).slice(-2)) +":"
                        +(('0' + dateFromInt.getSeconds()).slice(-2)) +"   "
                        +timeZoneFormatted +"   ";
                 }
            }

            return dateToOutput;
        }
    </script>

    <div class="copyright">
        <p>Student Success Plan   |   Copyright 2020, Apereo Foundation   |   All rights reserved.</p>
        <div style="cursor: pointer" id="InfoToggle">Click here for Version Information</div>
    </div>

</div>
