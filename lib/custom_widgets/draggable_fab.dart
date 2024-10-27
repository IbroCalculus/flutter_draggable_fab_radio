import 'package:flutter/material.dart';

import 'webview_widget.dart';

class DraggableFloatingButton extends StatefulWidget {
  final Widget child;
  const DraggableFloatingButton({super.key, required this.child});

  @override
  _DraggableFloatingButtonState createState() => _DraggableFloatingButtonState();
}

class _DraggableFloatingButtonState extends State<DraggableFloatingButton> {
  // Initial position of the button
  Offset _position = const Offset(20, 20);
  bool _showOverlay = false;  // Flag to control the visibility of the modal

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _position.dx,
          top: _position.dy,
          child: Draggable(
            feedback: Material(
              color: Colors.transparent,
              child: FloatingActionButton(
                onPressed: _toggleOverlay,
                child: const Icon(Icons.web),
              ),
            ),
            childWhenDragging: Container(),  // This will hide the button when being dragged
            onDragEnd: (details) {
              setState(() {
                // Update position based on where the drag ends
                _position = details.offset;
              });
            },
            child: FloatingActionButton(
              onPressed: _toggleOverlay,
              child: const Icon(Icons.web),
            ),
          ),
        ),
        // Show the modal wherever the FAB is located
        if (_showOverlay)
          Positioned(
            left: _position.dx,
            top: _position.dy + 60,  // Offset to show the modal below the FAB
            child: GestureDetector(
              onTap: _toggleOverlay,  // Hide the modal if tapped
              child: Material(
                elevation: 8,
                color: Colors.white,
                child: Container(
                  width: 150,  // Fixed width for the modal
                  height: 100,  // Fixed height for the modal
                  padding: const EdgeInsets.all(8.0),
                  // child: const Center(child: Text("Hello from Modal")),
                  child: const MyWebView(),
                ),
              ),
            ),
          ),
      ],
    );
  }

  // Toggle the visibility of the modal
  void _toggleOverlay() {
    setState(() {
      _showOverlay = !_showOverlay;
    });
  }
}
