fun returnEmailBody (errorObj) = "<table border='1' cellpadding='6' cellspacing='0' style='border-collapse: collapse;'>
  <thead>
    <tr>
      <th>Field</th>
      <th>Value</th>
    </tr>
  </thead>
  <tbody>" 
  ++
  (entriesOf(errorObj
  ) map (
    "<tr><td>" ++ $.key ++ "</td><td>" ++ ($.value as String default "") ++ "</td></tr>"
  ) joinBy "")
 ++
"</tbody></table>"