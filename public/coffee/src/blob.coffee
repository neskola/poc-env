saveData = (data, filename) ->
  console.log("saveData: " + data + ", filename " + filename)
  a = document.createElement("a")
  document.body.appendChild(a)
  a.style = "display : none"
  json = JSON.stringify(data)
  blob = new Blob( [json], { type : "octet/stream"})
  url = window.URL.createObjectURL(blob)
  a.href = url
  a.download = filename
  console.log(a)
  a.click()
  window.URL.revokeObjectURL(url)

data = { x: 42, s: "hello, world", d: new Date() }
filename = "my-download.json";

#saveData(data, filename)


